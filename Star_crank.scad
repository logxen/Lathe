% import_stl("Star_crank.stl");
include <Util.scad>

module Star_crank() {
	render() difference() {
		union() {
			for(i=[0:5]) {
				rotate([0,0,60*i]) union() {
					translate([0,0,3]) rotate([90,0,0]) cylinder(r1=7,r2=4, h=35);
					translate([0,-35,3]) sphere(r=7);
				}
			}
		}
		translate([0,0,-5]) cube([100,100,10], center=true);
		translate([0,0,13]) cube([50,50,10], center=true);
		translate([0,0, 2]) latheAxleBolt();
	}
}
Star_crank();
