% import_stl("Upper_gear.stl");

include <../Util.scad>

module Upper_gear() {
	difference() {
		gear (number_of_teeth=12, circular_pitch=280,
			rim_thickness=13, gear_thickness=13, bore_diameter=8);
		translate([0,0,7]) latheAxleBolt();
	}
}
