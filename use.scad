module box(size = [1,1,1], center = false, edge_radius = 0.1) {
	dim = (undef == size[0]) ? ([size,size,size]) : (size);

	t = (center) ? ([-dim[0]/2, -dim[1]/2, -dim[2]/2]) : ([0,0,0]);
	echo("translate -> ", t);

	translate(t)
		minkowski() {
			_inner_cube(dim, edge_radius);
			_edge_sphere(edge_radius);
		}
}

// THIS IS AN INTERNAL MODULE, NOT MEANT TO BE USED BY OTHERS.
module _inner_cube(size = [1,1,1], edge_radius = 0.1) {
	d =  edge_radius/2;

	translate([d,d,d])
		cube([size[0] - d*2, size[1] - d*2, size[2] - d*2]);
}

// THIS IS AN INTERNAL MODULE, NOT MEANT TO BE USED BY OTHERS.
module _edge_sphere(edge_radius = 0.1) {
	d =  edge_radius/2;

	translate([d,d,d])
		sphere(r=edge_radius);
}
