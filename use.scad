module box(size = [1,1,1], center = false, edge_radius = 0.1) {
	dimensions = (undef == size[0]) ? ([size,size,size]) : (size);

	t = (center) ? ([-size[0]/2, -size[1]/2, -size[2]/2]) : ([0,0,0]);

	translate(t)
		minkowski() {
			_inner_cube(size, edge_radius);
			_edge_sphere(size, edge_radius);
		}
}

// THIS IS AN INTERNAL MODULE, NOT MEANT TO BE USED BY OTHERS.
module _inner_cube(size = [1,1,1], edge_radius = 0.1) {
	d =  edge_radius/2;

	translate([d,d,d])
		cube([size[0] - d, size[1] - d, size[2] - d]);
}

// THIS IS AN INTERNAL MODULE, NOT MEANT TO BE USED BY OTHERS.
module _edge_sphere(size = [1,1,1], edge_radius = 0.1) {
	d =  edge_radius/2;

	translate([d,d,d])
		sphere(r=edge_radius);
}
