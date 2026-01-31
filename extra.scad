include <BOSL2/std.scad>
$fn = 32;
block = 22.9;
gap = 0.2;
height = 7;
factor = 0.7;
chamfer = 1;

module Extra3() 
{
	cuboid([ 2 * block, block, height ], rounding = chamfer) attach(BACK, FRONT) left(block / 2) down(block)
	    cuboid([ block, 2 * block, height ], rounding = chamfer);
}

module Extra2()
{
	cuboid([ 2 * block, block, height ], rounding = chamfer);
}

module One() 
{
	diff() {
		cuboid([ block-2, block-2, height ], rounding = chamfer) attach(TOP, BOT) down(height) 
			tag("remove") cuboid([ block-8, block-8, height ]) ; 
	}
}

scale([ factor, factor, factor ]){xdistribute(120){
    Extra2();
    Extra3();
    ycopies(block, 5) One();
}
}
;
