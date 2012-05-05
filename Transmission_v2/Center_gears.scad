% import_stl("Center_gears.stl");

include <../Util.scad>

module Center_gears() {
	render() difference() {
		union() {
			gear (number_of_teeth=20, circular_pitch=280,
				rim_thickness=13, gear_thickness=13, bore_diameter=1);
			translate([0,0,13]) gear (number_of_teeth=12, circular_pitch=280,
					rim_thickness=18, gear_thickness=18, bore_diameter=1);

			translate([0,0,13]) cylinder(r1=0,r2=12.5,h=20);
			translate([0,0,33]) cylinder(r=12.5,h=7);
		}
		translate([0,0,-1]) latheGuideHole(h=50);
		translate([0,0,33]) cylinder(r=11,h=8);
		translate([0,0,-1]) cylinder(r=11,h=8);
		translate([0,0, 7]) cylinder(r1=11,r2=0,h=16);
	}
}
Center_gears();

