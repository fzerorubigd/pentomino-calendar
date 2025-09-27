include <BOSL2/std.scad>;

$fn = 32;
block = 23;
pad = 18;
text_depth = 1;
depth = 4;
line_width = 2;
font = "Vazir:style=Black";
WeekDays = ["  شنبه  "," یکشنبه "," دوشنبه ","سه‌شنبه ","چهارشنبه","پنجشنبه ","  جمعه  "];
Days = ["۱","۲","۳","۴","۵","۶","۷","۸","۹","۱۰","۱۱","۱۲","۱۳","۱۴","۱۵","۱۶","۱۷","۱۸","۱۹","۲۰","۲۱","۲۲","۲۳","۲۴","۲۵","۲۶","۲۷","۲۸","۲۹","۳۰","۳۱"];
Months = ["فروردین","اردیبهشت","  خرداد","  تیر","  مرداد"," شهریور","  مهر","  آبان","  آذر","  دی","   بهمن","  اسفند"];
Years = ["۱۴۰۴","۱۴۰۵","۱۴۰۶","۱۴۰۷","۱۴۰۸","۱۴۰۹","۱۴۱۰","۱۴۱۱","۱۴۱۲","۱۴۱۳","۱۴۱۴","۱۴۱۵","۱۴۱۶","۱۴۱۷"];

All = concat(WeekDays, Days, Months, Years);

p_width = block*7;
p_height = block*10;

width =  p_width + pad*2;
height = p_height + pad * 2;

factor = 0.7;
difference() {
scale([factor, factor, factor]) {
he = 1;
for (i = [1:7]) {
    recolor("green") extrude_from_to([pad+p_width-i*block,pad+p_height,0],[pad+p_width-i*block,pad,0]) rect([he,line_width]);
}

recolor("green") extrude_from_to([pad+p_width,pad+p_height-6*block,0],[pad+p_width,pad,0]) rect([he,line_width]);

for (i = [0:10]) {
    if (i >5) {
        recolor("green") extrude_from_to([pad+p_width, pad+p_height-i*block,0],[pad ,pad+p_height-i*block,0]) rect([he,line_width]);
    } else {
        recolor("green") extrude_from_to([pad+p_width-block, pad+p_height-i*block,0],[pad ,pad+p_height-i*block,0]) rect([he,line_width]);
    }
}

for ( idx = [0:len(All)-1]) {
    x0 = idx%10;
    y = (idx-x0)/10;
    x = x0 + 1;
    if (idx < 7) {
        recolor("red") 
        right(pad+y*block+block/2) 
        back(pad+x*block-block/2) 
        text3d(All[idx], h=he, spin=135, size=4.5, font=font, direction="rtl", language="fa", script = "arabic", anchor=CENTER);
    } else if (idx < 38) {
        recolor("red") 
        right(pad+y*block+block/2 + 4)
        back(pad+x*block-block/2) 
        text3d(All[idx], h=he, spin=90, size=9, font=font, direction="ltr", language="fa", script = "arabic", anchor=CENTER);
    } else if (idx < 50 ){
        final = All[idx];
        recolor("blue") 
        right(pad+y*block+block/2) 
        back(pad+x*block-block/2) 
        if ((idx >= 44 && idx < 48) || idx == 41) {
            text3d(final, h=he, spin=135, size=5.5, font=font, direction="rtl", language="fa", script = "arabic", anchor=CENTER);
        } else {
            text3d(final, h=he, spin=135, size=4.5, font=font, direction="rtl", language="fa", script = "arabic", anchor=CENTER);
        }
    } else {
        recolor("red") 
        right(pad+y*block+block/2)
        back(pad+x*block-block/2) 
        text3d(All[idx], h=he, spin=90, size=7, font=font, direction="ltr", language="fa", script = "arabic", anchor=CENTER);
    }
}

    cuboid(
        [width,height,depth], rounding=5,
        edges=[LEFT+FRONT, LEFT+BACK, RIGHT+FRONT, RIGHT+BACK],
        anchor=TOP+LEFT+FRONT,
        $fn=24
    );
}
    right((pad/2) * factor) back((pad/2)*factor) #zcyl(d=6, h=2, anchor=TOP);
    right((p_width+pad+pad/2)*factor) back((pad/2) * factor) #zcyl(d=6, h=2, anchor=TOP);
    right((p_width+pad+pad/2)*factor) back((p_height+pad+pad/2) *factor) #zcyl(d=6, h=2, anchor=TOP);
    right((pad/2)*factor) back((p_height+pad+pad/2) *factor) #zcyl(d=6, h=2, anchor=TOP);
}