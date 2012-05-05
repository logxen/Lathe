% translate([8,0,0]) import_stl("Z_carriage_left.stl");

include <Util.scad>

module Z_carriage_left() {
	w = latheCarriageGuidesDistance + 56;
	x1 = -w/2+8;
	x2 =  w/2+8;

	render() difference() {
		union() {
			translate([x1,-10, 0]) cube([w,20,14]);
			translate([ 0, -1, 0]) cylinder(r=13,h=latheCarriageWidth/2-1, $fn=6);
		}
		translate([ 0, -1, latheCarriageWidth/2-4]) latheAxleBolt(h=latheCarriageWidth/2);

		translate([-latheCarriageGuidesDistance/2,  0,-1]) latheGuideHole();
		translate([ latheCarriageGuidesDistance/2,  0,-1]) latheGuideHole();

		translate([x1+5, -6,-1]) cube([ 8,12,16]);
		translate([x2-5-8, -6,-1]) cube([ 8,12,16]);

		translate([x1-1,  0, 7]) rotate([0,90,0]) cylinder(r=3,h=10);
		translate([x2-6,  0, 7]) rotate([0,90,0]) cylinder(r=3,h=10);

		translate([-20,-30,-1]) cube([40,20,latheCarriageWidth/2+2]);
		translate([-20, 10,-1]) cube([40,20,latheCarriageWidth/2+2]);
	}
}
Z_carriage_left();

