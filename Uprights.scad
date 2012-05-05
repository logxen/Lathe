% import_stl("Uprights.stl");
include <Util.scad>
use <Tail_slide.scad>

module Uprights() {
	w = latheCarriageGuidesDistance + latheGuideDiameter*3 + latheUprightThickness * 2;
	union() {
		difference()
		{
			Tail_slide();
			translate([ 26,0, 3]) latheBearing();
		}
		difference() {
			translate([40,-w/2,0])
				cube([8,w,latheUprightThickness]);
			translate([39,-w/2+latheUprightThickness/2,latheUprightThickness/2])
				rotate([0,90,0]) latheMountScrewHole(h=latheUprightThickness+2);
			translate([39, w/2-latheUprightThickness/2,latheUprightThickness/2])
				rotate([0,90,0]) latheMountScrewHole(h=latheUprightThickness+2);
		}
	}
}
Uprights();

