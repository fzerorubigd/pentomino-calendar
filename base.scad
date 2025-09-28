include <BOSL2/std.scad>;
use <data.scad>

data_source = "jalali";
$fn = 32;
block = 23;
pad = 18;
depth = 4;
line_width = 2;

p_width = block * 7;
p_height = block * 10;

width = p_width + pad * 2;
height = p_height + pad * 2;

factor = 0.7;
difference()
{
	scale([ factor, factor, factor ])
	{
		he = 1;
		for (i = [1:7])
		{
			recolor("green") extrude_from_to([ pad + p_width - i * block, pad + p_height, 0 ],
			                                 [ pad + p_width - i * block, pad, 0 ]) rect([ he, line_width ]);
		}

		recolor("green") extrude_from_to([ pad + p_width, pad + p_height - 6 * block, 0 ], [ pad + p_width, pad, 0 ])
		    rect([ he, line_width ]);

		for (i = [0:10])
		{
			if (i == 6 || i == 10)
			{
				recolor("green") extrude_from_to([ pad + p_width, pad + p_height - i * block, 0 ],
				                                 [ pad, pad + p_height - i * block, 0 ]) rect([ he, line_width ]);
			}
			else
			{
				recolor("green") extrude_from_to([ pad + p_width - block, pad + p_height - i * block, 0 ],
				                                 [ pad, pad + p_height - i * block, 0 ]) rect([ he, line_width ]);
			}
		}
		recolor("blue") right(pad + 6.5*block+2) back(pad + 4*block / 2) 
			text3d(" پیام شخصی برای هدیه", h = he, anchor = CENTER,
							spin = 90,
							size = 7,
							font = "Vazir:style=Black",
							direction = "rtl",
							language = "fa",
							script = "arabic");
		data = getData(data_source);
		for (idx = [0:len(data) - 1])
		{
			x0 = idx % 10;
			y = (idx - x0) / 10;
			x = x0 + 1;
			recolor("red") right(pad + y * block + block / 2+ data[idx][7]) back(pad + x * block - block / 2)
				text3d(data[idx][0], h = he, anchor = CENTER,
							spin = data[idx][3], 
							size = data[idx][2], 
							font = data[idx][1], 
							direction = data[idx][5], 
							language = data[idx][4], 
							script = data[idx][6] );
		}

		cuboid([ width, height, depth ], rounding = 5,
		       edges = [ LEFT + FRONT, LEFT + BACK, RIGHT + FRONT, RIGHT + BACK ], anchor = TOP + LEFT + FRONT,
		       $fn = 24);
	}
	right((pad / 2) * factor) back((pad / 2) * factor) #zcyl(d = 6, h = 2, anchor = TOP);
	right((p_width + pad + pad / 2) * factor) back((pad / 2) * factor) #zcyl(d = 6, h = 2, anchor = TOP);
	right((p_width + pad + pad / 2) * factor)
	    back((p_height + pad + pad / 2) * factor) #zcyl(d = 6, h = 2, anchor = TOP);
	right((pad / 2) * factor) back((p_height + pad + pad / 2) * factor) #zcyl(d = 6, h = 2, anchor = TOP);
}
