include <BOSL2/std.scad>
$fn = 32;
block = 22.9;
gap = 0.2;
height = 7;
factor = 0.7;
chamfer=1;

module Z() {
    cuboid([2*block,block,height], rounding=chamfer)
    attach(BACK, FRONT) left(block/2) down(block) cuboid([block,3*block,height],rounding=chamfer)
    attach(RIGHT, LEFT) right(block) down(block) cuboid([2*block,block,height],rounding=chamfer);
}

module I() {
    cuboid([5*block,block,height], rounding=chamfer);
}

module L() {
    cuboid([4*block,block,height], rounding=chamfer)
    attach(BACK, FRONT) left(1.5*block) down(block) cuboid([block,2*block,height],rounding=chamfer);
}

module V() {
    cuboid([3*block,block,height], rounding=chamfer)
    attach(BACK, FRONT) left(block) down(block) cuboid([block,3*block,height],rounding=chamfer);
}

module T() {
    cuboid([3*block,block,height], rounding=chamfer)
    attach(BACK, FRONT) left(block) down(2*block) cuboid([block,3*block,height],rounding=chamfer);
}

module X() {
    cuboid([3*block,block,height], rounding=chamfer)
    attach(BACK, FRONT) down(2*block) cuboid([block,3*block,height],rounding=chamfer);
}

module F() {
    cuboid([3*block,block,height], rounding=chamfer)
    attach(BACK, FRONT) down(2*block) cuboid([block,2*block,height],rounding=chamfer)
    attach(RIGHT, LEFT) right(block) cuboid([block,2*block,height],rounding=chamfer);
}

module P() {
    cuboid([2*block,2*block,height], rounding=chamfer)
    attach(RIGHT, LEFT) right(block) down(block) left(block/2) cuboid([2*block,block,height],rounding=chamfer);
}

module U() {
    cuboid([2*block,block,height], rounding=chamfer)
    attach(BACK, FRONT) left(block/2) down(block) cuboid([block,3*block,height],rounding=chamfer)
    attach(LEFT, RIGHT) left(block) down(block) cuboid([2*block,block,height],rounding=chamfer);
}

module N() {
    cuboid([2*block,block,height], rounding=chamfer)
    attach(BACK, FRONT) left(block/2) down(block) cuboid([block,2*block,height],rounding=chamfer)
    attach(BACK, FRONT) left(block) down(block) cuboid([3*block,block,height],rounding=chamfer);
}

module W() {
    cuboid([2*block,block,height], rounding=chamfer)
    attach(BACK, FRONT) left(block/2) down(block) cuboid([block,2*block,height],rounding=chamfer)
    attach(BACK, FRONT) left(block/2) down(block) cuboid([2*block,block,height],rounding=chamfer)
    attach(BACK, FRONT) left(block/2) down(block) cuboid([block,2*block,height],rounding=chamfer);
}

module Y() {
    cuboid([4*block,block,height], rounding=chamfer)
    attach(BACK, FRONT) left(block/2) down(block) cuboid([block,2*block,height],rounding=chamfer);
}

scale([factor, factor, factor]) {
    xdistribute(120) {
        Y();
        W();
        U();
        L();
        P();
        F();
        X();
        I();
        V();
        N();
        Z();
        T();
    }
};