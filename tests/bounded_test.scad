use <../use.scad>

$fn=150;

difference() {
	color("grey") box(size=1);

	scale([-1,1,1]) color("purple") cube([2,2,2]);
	scale([1,-1,1]) color("purple") cube([2,2,2]);
	scale([1,1,-1]) color("purple") cube([2,2,2]);

	translate([1,0,0]) color("orange") cube([2,2,2]);
	translate([0,1,0]) color("orange") cube([2,2,2]);
	translate([0,0,1]) color("orange") cube([2,2,2]);
}

