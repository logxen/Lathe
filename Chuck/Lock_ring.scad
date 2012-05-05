% import_stl("Lock_ring.stl");

include <../Util.scad>

module chuck_lock_ring() {
	render() union() {
		difference() {
			cylinder(r=44,h=19);
			translate([0,0,-1]) cylinder(r1=32, r2=34,h=3);
			translate([0,0,-1]) cylinder(r=10,h=25);
			translate([0,0,2]) gear(number_of_teeth=45, circular_pitch=285,
				rim_thickness=25, gear_thickness=25, clearance=0.2);
		}

		for(i=[0:23]) {
			rotate([0,0,i*15]) render() difference() {
				union() {
					cylinder(r1=45,r2=47,h=9.5);
					translate([0,0,9.5]) cylinder(r1=47,r2=45,h=9.5);
				}
				cylinder(r=42,h=19);
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

chuck_lock_ring();
