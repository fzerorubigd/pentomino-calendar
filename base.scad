include <BOSL2/std.scad>

$fn = 32;
block = 23;
pad = 18;
text_depth = 1;
depth = 4;
line_width = 2;
font = "Vazir:style=Black";
WeekDays = ["  شنبه  "," یکشنبه "," دوشنبه ","سه‌شنبه ","چهارشنبه","پنجشنبه ","  جمعه  "];
Days = ["۱","۲","۳","۴","۵","۶","۷","۸","۹","۱۰","۱۱","۱۲","۱۳","۱۴","۱۵","۱۶","۱۷","۱۸","۱۹","۲۰","۲۱","۲۲","۲۳","۲۴","۲۵","۲۶","۲۷","۲۸","۲۹","۳۰","۳۱"];
Months = ["فروردین","اردیبهشت","  خرداد","    تیر","  مرداد"," شهریور","    مهر","   آبان","    آذر","    دی","   بهمن","  اسفند"];
Years = ["۱۴۰۴","۱۴۰۵","۱۴۰۶","۱۴۰۷","۱۴۰۸","۱۴۰۹","۱۴۱۰","۱۴۱۱","۱۴۱۲","۱۴۱۳","۱۴۱۴","۱۴۱۵","۱۴۱۶","۱۴۱۷"];

All = concat(WeekDays, Days, Months, Years);
// for ( i = Months ) {
//     echo (i);
//     echo(textmetrics(i, size=7, font="Vazir", direction="ltr", language="fa", script = "arabic",));
// }

// path = square([block-1,block-1], anchor=FRONT);

//     for ( x = [0:13]) {
//     left (x * 30)
//     cuboid(
//         [block,block,depth], rounding=2,
//         edges=[LEFT+FRONT, LEFT+BACK, RIGHT+FRONT, RIGHT+BACK],
//         anchor=BOT,
//         $fn=24
//     ) 
//     up(2) fwd(2) #text3d(Years[x], h=depth-1, spin=45, size=4.5, font="Vazir", direction="ltr", language="fa", script = "arabic", anchor = CENTER);
//     }

p_width = block*7;
p_height = block*10;

width =  p_width + pad*2;
height = p_height + pad * 2;

factor = 0.7;
//path = [[p_width/2, p_height/2],[p_width/2,-p_height/2],[-p_width/2,-p_height/2],[-p_width/2,p_height/2]];
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
        sc = textmetrics(All[idx], size=4.5, font=font, direction="rtl", language="fa", script = "arabic");
        xw = sc.size[0];
        yw = sc.size[1];
        recolor("red") 
        right(pad+y*block+yw-1) 
        back(pad+x*block-yw+xw/len(All[idx])) 
        text3d(All[idx], h=he, spin=135, size=4.5, font=font, direction="rtl", language="fa", script = "arabic", anchor=RIGHT);
    } else if (idx < 38) {
        sc = textmetrics(All[idx], size=4.5, font=font, direction="ltr", language="fa", script = "arabic");
        xw = sc.size[0];
        yw = sc.size[1];
        recolor("red") 
        right(pad+y*block+block-block/2+5)
        back(pad+x*block-yw-block/3+1) 
        text3d(All[idx], h=he, spin=90, size=9, font=font, direction="ltr", language="fa", script = "arabic", anchor=CENTER);
    } else if (idx < 50 ){
        final = All[idx];
        sc = textmetrics(final, size=4, font=font, direction="rtl", language="fa", script = "arabic");
        xw = sc.size[0];
        yw = sc.size[1];
       
        recolor("blue") 
        right(pad+y*block+yw) 
        back(pad+x*block-yw+xw/len(final)) 
        if (idx >= 44 && idx < 48) {
            text3d(final, h=he, spin=135, size=5.5, font=font, direction="rtl", language="fa", script = "arabic", anchor=RIGHT);
        } else {
            text3d(final, h=he, spin=135, size=4.5, font=font, direction="rtl", language="fa", script = "arabic", anchor=RIGHT);
        }
    } else {
        sc = textmetrics(All[idx], size=5, font=font, direction="ltr", language="fa", script = "arabic");
        xw = sc.size[0];
        yw = sc.size[1];
        recolor("red") 
        right(pad+y*block+block-block/2+5)
        back(pad+x*block-yw-block/3+1) 
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