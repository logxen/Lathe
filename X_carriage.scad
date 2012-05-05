% translate([0,20,14]) rotate([90,0,0]) import_stl("X_carriage.stl");

include <Util.scad>

module X_carriage() {
	render() union() {
		difference() {
			translate([-latheCarriageWidth/2,-14,0])
				cube([latheCarriageWidth,27,25]);
			translate([-latheCarriageWidth/2+latheGuideDiameter,5,-1])
				latheGuideHole(h=30);
			translate([ latheCarriageWidth/2-latheGuideDiameter,5,-1])
				latheGuideHole(h=30);

			if (latheOldStyleCarriage) {
				translate([-latheCarriageWidth/2,-9,0])
					rotate([12,0,0]) translate([0,-10,0]) cube([latheCarriageWidth,10,30]);
				translate([  0,1,-1]) rotate([0,0,45]) cube([30,30,30]);
			}else{
				translate([  0,1,15]) rotate([0,0,45]) cube([30,30,latheAxleNutHeight]);
			}

			translate([  0,5,15]) latheAxleBolt(h=latheAxleNutHeight);
		}

		difference() {
			translate([-latheCarriageWidth/2,-14,25]) cube([latheCarriageWidth, 8,20]);
			translate([  0, 15,24]) cylinder(r=25,h=30);
		}
	}
}

translate([0,20,14]) rotate([90,0,0]) X_carriage();
