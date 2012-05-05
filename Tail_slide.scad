% import_stl("Tail_slide.stl");
include <Util.scad>

module Tail_slide() {
	w1 = latheCarriageGuidesDistance+latheGuideDiameter*3;
	w2 = latheCarriageGuidesDistance;
	render() difference() {
		linear_extrude(height=latheUprightThickness)
		{
			translate([-3,0]) circle(r=7);
			translate([-29,-19]) square([15,38]);
			intersection() {
				translate([-29,0]) circle(r=19);
				translate([-29-20,-20]) square([20,40]);
			}
			translate([15,-w1/2])
				square([33,w1]);
			polygon(points=[[-14, 19],[15, w1/2],[15, w2/2],[-14, 12]]);
			polygon(points=[[-14,-19],[15,-w1/2],[15,-w2/2],[-14,-12]]);

			polygon(points=[[-14,-12],[15, w1/2],[15, w2/2],[-14,-19]]);
			polygon(points=[[-14, 12],[15,-w1/2],[15,-w2/2],[-14, 19]]);

			polygon(points=[[10,0],[15, w2/2],[15,-w2/2]]);
		}
		translate([-29,0, latheUprightThickness/2-2]) latheBearing(h=latheUprightThickness);
		translate([ 26,0,-1]) latheAxleHole(h=latheUprightThickness+2);

		translate([ -3,  0,-1]) latheGuideHole(h=latheUprightThickness+2);
		translate([ 27, latheCarriageGuidesDistance/2,-1])
			latheGuideHole(h=latheUprightThickness+2);
		translate([ 27,-latheCarriageGuidesDistance/2,-1])
			latheGuideHole(h=latheUprightThickness+2);
	}
}

Tail_slide();
