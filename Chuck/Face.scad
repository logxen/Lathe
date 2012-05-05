% import_stl("Face.stl");

include <../Util.scad>

module chuck_face() {
	union() {
		render() difference() {
			cylinder(r=44,h=27);
			translate([0,0,12]) cylinder(r=39,h=25);
		
			for(i=[0:3]) rotate([0,0,90*i]) intersection() {
				difference() {
					translate([7,34,-1]) cylinder(r=45,h=14, $fn=100);
					translate([7,34,-1]) cylinder(r=41,h=14, $fn=100);
				}
				translate([-18,0,-2]) cylinder(r=19,h=16);
			}
		}
		for(i=[0:23]) {
			rotate([0,0,i*15]) render() difference() {
				union() {
					cylinder(r1=45,r2=47,h=13.5);
					translate([0,0,13.5]) cylinder(r1=47,r2=45,h=13.5);
				}
				cylinder(r=42,h=27);
				rotate([-3,0,3]) translate([-50,0,0]) cube([100,50,30]);
				rotate([ 0,3,-93]) translate([0,-50,0]) cube([50,100,30]);
	
				translate([0,0,27]) rotate([3, 0,3])
					translate([-50,0,-30]) cube([100,50,30]);
				translate([0,0,27]) rotate([0,-3,-93])
					translate([0,-50,-30]) cube([50,100,30]);
			}
		}
	}
}
chuck_face();
