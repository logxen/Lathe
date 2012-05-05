% translate([15,0,0]) import_stl("Bearing_block.stl");
include <Util.scad>

module Bearing_block() {
	x1 = -latheCarriageGuidesDistance/2-latheGuideDiameter*1.5;
	x2 =  latheCarriageGuidesDistance/2+latheGuideDiameter*1.5;
	x3 =  x2+30;
	render() union() {
		difference() {
			translate([x1,-17.5, 0]) cube([x3-x1,35,6.5]);

			translate([-11.8, -12.5, -1]) cube([23.5,22,10]);

			translate([-latheCarriageGuidesDistance/2, -3.5, 2])
				rotate([0,0,90]) latheGuideBolt();
			translate([ latheCarriageGuidesDistance/2, -3.5, 2])
				rotate([0,0,90]) latheGuideBolt();
	
		}
		translate([x1,0,0]) difference() {
			translate([-8,11.0,0]) cube([28,6.5,42]);
			translate([10,10.0,35]) rotate([-90,0,0]) latheMountScrewHole();
			translate([-8,10.0,0]) rotate([0,15-90,0]) cube([50,10,20]);
		}

		translate([x2,0,0]) difference() {
			translate([ 0,11.0, 0]) cube([40,6.5,42]);
			translate([20,10.0,35]) rotate([-90,0,0]) latheMountScrewHole();
		}

		translate([x2,0,0]) difference() {
			translate([ 0,-17.5,0]) cube([10,35,42]);
			translate([ 7, -5,28]) rotate([0,-90,0]) latheBearing();
			translate([-1, -6,30]) difference() {
				translate([0,-14,2]) cube([12,14,14]);
				translate([-1,0,0]) rotate([0,90,0]) cylinder(r=12, h=16);
			}
		}

		translate([x3,0,0]) difference() {
			translate([ 0,-17.5,0]) cube([10,35,42]);
			translate([ 3, -5,28]) rotate([0,90,0]) latheBearing();
			translate([-1, -6,30]) difference() {
				translate([0,-14,2]) cube([12,14,14]);
				translate([-1,0,0]) rotate([0,90,0]) cylinder(r=12, h=16);
			}
		}
	}
}

Bearing_block();

