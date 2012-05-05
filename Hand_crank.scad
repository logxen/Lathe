//% import_stl("Hand_crank.stl");
include <Util.scad>

module Hand_crank() {
	union() {
		difference() 	{
			cylinder(r=11, h=6, $fn=6);
			translate([0,0,2]) latheAxleBolt();
		}
	
		rotate_extrude($fn=64) {
			translate([30,0]) intersection() {
				circle(r=5);
				translate([-10,0]) square([20,20]);
			}
		}
		translate([0,-30,0]) cylinder(r=5, h=30);
		translate([0,-30,30]) sphere(r=5);

		for(i=[0:5]) {
			rotate([0,0,60*i]) translate([-3,8,0]) intersection() {
				cube([6,20,6]);
				rotate([-10,0,0]) cube([6,20,6]);
			}
		}
	}
}
Hand_crank();

