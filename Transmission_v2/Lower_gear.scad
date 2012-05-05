% import_stl("Lower_gear.stl");

include <../Util.scad>

module Lower_gear() {
	difference() {
		gear (number_of_teeth=19, circular_pitch=270,
			rim_thickness=13, gear_thickness=13, bore_diameter=8);
		translate([0,0,7]) latheAxleBolt();
	}
}

