include <BOSL2/std.scad>

width = 84;
height = 100;
depth = 6;

spin = 27;

cuboid([width, height, depth], edges=[FRONT+LEFT, FRONT+RIGHT, BACK+LEFT, BACK+RIGHT], rounding=5)
attach(TOP, LEFT) down(3) left(width/4) yrot(spin) cuboid([ width,depth,height], edges=[RIGHT+TOP, RIGHT+DOWN], rounding =5);

up(depth-1) left(35) cuboid([depth/3, width, depth*1.5], rounding=1);

diff() {
    up(depth-1) right(depth*3) cuboid([width/2, height-depth, depth*2], edges=[FRONT+LEFT, FRONT+RIGHT, BACK+LEFT, BACK+RIGHT], rounding=5)
        attach(TOP, TOP) tag("remove") down(depth) cuboid([width/2-3, height-depth-3, depth*2], edges=[FRONT+LEFT, FRONT+RIGHT, BACK+LEFT, BACK+RIGHT], rounding=5);
}