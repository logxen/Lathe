% import_stl("Jaws.stl");

include <../Util.scad>

module chuck_jaw() {
	render() difference() {
		translate([-8.5,-15,0]) cube([17,28,19]);
		translate([0,3,-1])cylinder(r=2+latheExtraGap,h=21);
		translate([0,3,13])cylinder(r=5+latheExtraGap,h=21, $fn=6);
		translate([0,11,-1]) rotate([-10,0,0]) cylinder(r=2+latheExtraGap,h=21);

		translate([-1,13,-1]) rotate([-5,0,-45]) cube([20,20,25]);
		mirror([1,0,0]) translate([-1,13,-1]) rotate([-5,0,-45]) cube([20,20,25]);

		translate([0,-10,-1]) rotate([0,7,-100]) cube([20,20,25]);
		mirror([1,0,0]) translate([0,-10,-1]) rotate([0,7,-100]) cube([20,20,25]);

		translate([0,-3,9.5]) rotate([0,7,-100]) cube([20,20,25]);
		mirror([1,0,0]) translate([0,-3,9.5]) rotate([0,7,-100]) cube([20,20,25]);
	}
}

chuck_jaw();
