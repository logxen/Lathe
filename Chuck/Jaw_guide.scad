% import_stl("Jaw_guide.stl");

include <../Util.scad>

module chuck_jaw_guide() {
	render() union() {
		difference() {
			cylinder(r=36,h=3);
			translate([-40,-9,1.5]) cube([80,18,1.5]);
			translate([-9,-40,1.5]) cube([18,80,1.5]);
			latheAxleHole();
			translate([-9,0,-1]) cylinder(r=2+latheExtraGap,h=3);
			translate([ 9,0,-1]) cylinder(r=2+latheExtraGap,h=3);
			translate([0,-9,-1]) cylinder(r=2+latheExtraGap,h=3);
			translate([0, 9,-1]) cylinder(r=2+latheExtraGap,h=3);
			translate([-2-latheExtraGap,  9,-1]) cube([4+latheExtraGap*2,30,3]);
			translate([-2-latheExtraGap,-39,-1]) cube([4+latheExtraGap*2,30,3]);
			translate([  9,-2-latheExtraGap,-1]) cube([30,4+latheExtraGap*2,3]);
			translate([-39,-2-latheExtraGap,-1]) cube([30,4+latheExtraGap*2,3]);
		}

		for(i=[0:3]) rotate([0,0,90*i]) translate([0,0,3]) render() intersection()
		{
			translate([9,13,0]) cube([7,30,3]);
			translate([3,13,0]) rotate([0,0,-15]) cube([7,30,3]);
			cylinder(r1=36,r2=32,h=3);
		}
	}
}
chuck_jaw_guide();
