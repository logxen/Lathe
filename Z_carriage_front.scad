% translate([0,-2,0]) import_stl("Z_carriage_front.stl");

include <Util.scad>

module Z_carriage_front() {
	render() union() {
		difference() {
			union() {
				difference() {
					translate([-latheCarriageWidth/2,-26, 0])
						cube([latheCarriageWidth,40,12]);
					translate([-latheCarriageWidth/2+latheGuideDiameter*2, -5,-1])
						cube([latheCarriageWidth-latheGuideDiameter*4,30,14]);
	
					translate([-latheCarriageWidth/2+latheGuideDiameter,-17,-1])
						latheGuideHole();
					translate([ latheCarriageWidth/2-latheGuideDiameter,-17,-1])
						latheGuideHole();

					translate([-latheCarriageWidth/2+latheGuideDiameter,  3,-1])
						latheGuideHole();
					translate([ latheCarriageWidth/2-latheGuideDiameter,  3,-1])
						latheGuideHole();
				}
				translate([ 0,-16, 0]) cylinder(r=15, h=21);
			}
			translate([ 0,-16, 13]) latheBearing(h=20);
		}

		if (latheCarriageFeet) {
			intersection() {
				translate([-latheCarriageWidth/2, 14, 0]) cube([latheGuideDiameter*2,12,6]);
				translate([-latheCarriageWidth/2+latheGuideDiameter, 14, 0])
				cylinder(r=12,h=6);
			}
			intersection() {
				translate([ latheCarriageWidth/2-latheGuideDiameter*2, 14, 0])
					cube([latheGuideDiameter*2,12,6]);
				translate([ latheCarriageWidth/2-latheGuideDiameter, 14, 0])
					cylinder(r=12,h=6);
			}
		}
	}
}
Z_carriage_front();
