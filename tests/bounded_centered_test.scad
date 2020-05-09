use <../use.scad>

$fn=150;

difference() {
	color("grey") box(size=1, center=true);

	translate([0.5,-2,-2]) color("red") cube([4,4,4]);
	scale([-1,1,1]) translate([0.5,-2,-2]) color("cyan") cube([4,4,4]);

	rotate([0,0,90]) translate([0.5,-2,-2]) color("green") cube([4,4,4]);
	rotate([0,0,90]) scale([-1,1,1]) translate([0.5,-2,-2]) color("magenta") cube([4,4,4]);

	rotate([0,270,0]) translate([0.5,-2,-2]) color("blue") cube([4,4,4]);
	rotate([0,270,0]) scale([-1,1,1]) translate([0.5,-2,-2]) color("yellow") cube([4,4,4]);
}
