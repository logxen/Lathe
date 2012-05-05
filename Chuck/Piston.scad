% rotate([0,0,-16]) import_stl("Piston.stl");

include <../Util.scad>

module chuck_piston() {
	render() difference() {
		cylinder(r=38,h=20);
		
		for(i=[0:3]) rotate([0,0,90*i]) mirror([1,0,0]) intersection() {
			difference() {
				translate([7,34,-1]) cylinder(r=45,h=22, $fn=100);
				translate([7,34,-1]) cylinder(r=41,h=22, $fn=100);
			}
			translate([-18,0,-2]) cylinder(r=19,h=22);
		}
		for(i=[0:3]) {
			rotate([0,0,i*90+50]) translate([27,0,-1]) cylinder(r=3,h=22);
		}
		for(i=[0:3]) rotate([0,0,i*90-21]) translate([-2.7,35.5,-1]) cube([5.4,5,30]);

		latheAxleHole();
	}
}
chuck_piston();
