% translate([40,0,0]) import_stl("Bevel_gear.stl");
include <Util.scad>

/*
outside_radius = (number_of_teeth * outside_circular_pitch / 180) / 2;
sin(angle) = outside_radius / cone_distance;
*/

module lathe_bevel_gear() {
	angle = 45;
	outside_radius = 20;
	number_of_teeth = 11;

	render() difference() { 
		intersection() {
			bevel_gear (
				number_of_teeth=number_of_teeth,
				cone_distance = outside_radius / sin(angle),
				face_width=15,
				outside_circular_pitch = outside_radius * 2 * 180 / number_of_teeth,
				pressure_angle=30,
				clearance = 0.2,
				bore_diameter=5,
				gear_thickness = 8.8,
				backlash = 0,
				involute_facets=0,
				finish = 0);
			cylinder(r=outside_radius, h=50);
		}
		translate([0,0,3]) latheAxleBolt();
	}
}

lathe_bevel_gear();
translate([0,20,20]) rotate([90,180,0]) lathe_bevel_gear();

