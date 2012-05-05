% import_stl("Planet_gears.stl");

include <../Util.scad>

module chuck_planet_gear() {
	render() intersection() {
		gear (number_of_teeth=11, circular_pitch=280,
				rim_thickness=18.5, gear_thickness=18.5, bore_diameter=4);
		difference() {
			cylinder(r1=5,r2=20,h=20);
			translate([0,0,6]) cylinder(r=4.5,h=20,$fn=6);
		}
	}
}

chuck_planet_gear();