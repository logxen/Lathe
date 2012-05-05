% translate([0,-5.5,0]) import_stl("Gear_lever.stl");

difference() {
	union() {
		linear_extrude(height=3) {
			difference() {
				union() {
					translate([ 20,6]) circle(r=6);
					translate([ 20,6]) rotate(-33) translate([-20, 0]) circle(r=6);
					translate([ 20,6]) rotate(-33) translate([-20,-6]) square([20,12]);
					translate([-21,5]) circle(r=5);
					translate([-21,5]) rotate(180+28) translate([-28,-5]) square([28, 5]);
					translate([-21,0]) square([41,5]);
				}
				translate([20,6]) rotate(-33) translate([-20, 0]) circle(r=0.5);
				translate([-21,5]) circle(r=0.5);
			}
		}
		translate([20,6,0]) cylinder(r=5.5,h=8.5);
	}
	translate([20,6,-1]) cylinder(r=4,h=10);
}