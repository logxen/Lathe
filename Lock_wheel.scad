% import_stl("Lock_wheel.stl");
include <Util.scad>

module Lock_wheel() {
	difference() {
		union() {
			cylinder(r=38, h=4);
			cylinder(r1=20, r2=14, h=7, $fn=6);
		}
		translate([0,0,1]) latheAxleBolt();

		for(i=[0:11]) {
			rotate([0,0,30*i]) union() {
				translate([25,0,-1]) cylinder(r=3.5, h=6);
				translate([25,-3.5,-1]) cube([5,7,6]);
				translate([30,0,-1]) cylinder(r=3.5, h=6);
			}
		}
	}
}
Lock_wheel();

