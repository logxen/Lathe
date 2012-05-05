% import_stl("Cam_lever_part_A.stl");

difference() {
	linear_extrude(height=5) {
		difference() {
			union() {
				translate([-16.5,28.5]) circle(r=6);
				translate([ 13.0,28.5]) circle(r=6);
				translate([-13.0, 9.0]) circle(r=6);
				translate([-19.0, 9.0]) square([15,20.0]);
				translate([-16.5,18.0]) square([29.5,16.5]);
				translate([-16.5,18.0]) square([40.0, 4.5]);
			}
			translate([-4.0, 7.0]) circle(r=11);
			translate([11.5,13.0]) rotate(20) square([20.0, 5]);

			translate([-16.5,28.5]) circle(r=0.5);
			translate([ 13.0,28.5]) circle(r=0.5);
		}
	}
	translate([0,0,2.5]) linear_extrude(height=3) {
		translate([ 13.0,28.5]) circle(r=6);
		translate([ 13.0,28.5]) rotate(110) translate([0,-4]) square([10,10]);
	}
}
