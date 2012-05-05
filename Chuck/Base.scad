% rotate([0,0,-5]) import_stl("Base.stl");
include <../Util.scad>

module chuck_base() {
	union() {
		render() difference() {
			cylinder(r=44,h=25);
			difference() {
				translate([0,0,10]) cylinder(r=39,h=25);
				translate([-2.5,36,9]) cube([5,5,30]);
				translate([-2.5,-41,9]) cube([5,5,30]);
				translate([36,-2.5,9]) cube([5,5,30]);
				translate([-41,-2.5,9]) cube([5,5,30]);
			}
			translate([0,0,5]) latheAxleBolt();
			for(i=[0:3]) {
				rotate([0,0,i*90+18]) translate([27,0,-1]) cylinder(r=3,h=20);
			}
		}

		for(i=[0:23]) {
			rotate([0,0,i*15]) render() difference() {
				union() {
					cylinder(r1=45,r2=47,h=12.5);
					translate([0,0,12.5]) cylinder(r1=47,r2=45,h=12.5);
				}
				cylinder(r=42,h=25);
				rotate([-3,0,3]) translate([-50,0,0]) cube([100,50,30]);
				rotate([ 0,3,-93]) translate([0,-50,0]) cube([50,100,30]);
	
				translate([0,0,25]) rotate([3, 0,3])
					translate([-50,0,-30]) cube([100,50,30]);
				translate([0,0,25]) rotate([0,-3,-93])
					translate([0,-50,-30]) cube([50,100,30]);
			}
		}
	}
}
chuck_base();
