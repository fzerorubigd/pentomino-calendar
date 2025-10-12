include <BOSL2/std.scad>

$fn = 32;
block = 23;
pad = 18;
text_depth = 1;
depth = 4;
line_width = 2;

p_width = block * 7;
p_height = block * 10;

width = p_width + pad * 2;
height = p_height + pad * 2;

magnet_w = 6.1;
magnet_h = 2;

factor = 0.7;
difference()
{
	scale([ factor, factor, factor ])
	{
		cuboid([ width, height, depth ], rounding = 5,
		       edges = [ LEFT + FRONT, LEFT + BACK, RIGHT + FRONT, RIGHT + BACK ], anchor = TOP + LEFT + FRONT,
		       $fn = 24);
	}

	scale([ factor, factor, factor ])
	{
		diff()
		{
			back(pad) right(pad)
			    cuboid([ p_width + 1, p_height + 1, depth + 3 ], anchor = TOP + LEFT + FRONT, $fn = 24 )
			        attach(LEFT, RIGHT) left(2 * block + 1) down(block) tag_this("remove")
			            cuboid([ block, 6 * block, depth + 3 ], anchor = TOP + LEFT + FRONT );
		}
	}
	right((pad / 2) * factor) back((pad / 2) * factor) #zcyl(d = magnet_w, h = magnet_h, anchor = TOP);
	right((p_width + pad + pad / 2) * factor) back((pad / 2) * factor) #zcyl(d = magnet_w, h = magnet_h, anchor = TOP);
	right((p_width + pad + pad / 2) * factor)
	    back((p_height + pad + pad / 2) * factor) #zcyl(d = magnet_w, h = magnet_h, anchor = TOP);
	right((pad / 2) * factor) back((p_height + pad + pad / 2) * factor) #zcyl(d = magnet_w, h = magnet_h, anchor = TOP);
}
