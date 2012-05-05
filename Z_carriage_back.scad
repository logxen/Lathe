% import_stl("Z_carriage_back.stl");

include <Util.scad>

module Z_carriage_back() {
	render() union() {
		difference() {
			translate([-latheCarriageWidth/2,-26, 0]) cube([latheCarriageWidth,40,10]);
			translate([-latheCarriageWidth/2+latheGuideDiameter*3,-26,-1])
				cube([latheCarriageWidth-latheGuideDiameter*6,30,12]);
			translate([-latheCarriageWidth/2+latheGuideDiameter*3+1,-20,-1])
				rotate([0,0,225]) cube([10,10,12]);
			translate([ latheCarriageWidth/2-latheGuideDiameter*3-1,-20,-1])
				rotate([0,0,225]) cube([10,10,12]);
	
			translate([-latheCarriageWidth/2+latheGuideDiameter,-17,-1])
				latheGuideHole(h=12);
			translate([ latheCarriageWidth/2-latheGuideDiameter,-17,-1])
				latheGuideHole(h=12);

			translate([-latheCarriageWidth/2+latheGuideDiameter,  3,-1])
				latheGuideHole(h=12);
			translate([ latheCarriageWidth/2-latheGuideDiameter,  3,-1])
				latheGuideHole(h=12);
		}

		if (latheCarriageFeet)
		{
			intersection()
			{
				translate([-latheCarriageWidth/2, 14, 0])
					cube([latheGuideDiameter*2,12,6]);
				translate([-latheCarriageWidth/2+latheGuideDiameter, 14, 0])
					cylinder(r=12,h=6);
			}
			intersection()
			{
				translate([ latheCarriageWidth/2-latheGuideDiameter*2, 14, 0])
					cube([latheGuideDiameter*2,12,6]);
				translate([ latheCarriageWidth/2-latheGuideDiameter, 14, 0])
					cylinder(r=12,h=6);
			}
		}
	}
}
Z_carriage_back();

