%import_stl("Idler_gear.stl");

use <MCAD/involute_gears.scad>

gear (number_of_teeth=19, circular_pitch=270,
	rim_thickness=11, gear_thickness=11, bore_diameter=4);
