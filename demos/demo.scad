use <../use.scad>

$fn=50;

box();

box(center=true);

{
	dim = 3;
	centered = true;

	translate([-3,-3,-3]) color("grey") box(size=dim, center=centered);
}

color("red")     translate([3,0,0]) box(edge_radius=0.1);
color("green")   translate([0,3,0]) box(edge_radius=0.2);
color("blue")    translate([0,0,3]) box(edge_radius=0.3);

color("cyan")    translate([-3,0,0]) box(edge_radius=0.4);
color("magenta") translate([0,-3,0]) box(edge_radius=0.5);
color("yellow")  translate([0,0,-3]) box(edge_radius=0.6);

translate([5,5,5]) color("purple") box(size=[2,3,5], center=true, edge_radius=0.3);
