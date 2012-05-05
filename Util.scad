/*************** CONFIGURATION ***************/

//The extra gap is the added between different rotating parts so there is some clearing between them. Reduce this if your axes are to lose.
// Increase it if your axes won't fit.
latheExtraGap = 0.2;

//The Axle fits in the bearing, the defaults are 608 bearings. With M8 rods and M8 nuts.
latheBearingDiameter = 22;
latheAxleDiameter = 8;
latheAxleNutDiameter = 15;
latheAxleNutHeight = 6;

//The guides are to keep the machine together and to guide the carriage.
//This needs to be the outer diameter of the smooth tube.
//Defaults are M6 rods with 1mm tubes and M6 nuts
latheGuideDiameter = 7;
latheGuideNutDiameter = 11.5;

//The screw hole diameter is used for the screw holes (obviously). Screws are used to screw the parts to the bottom.
latheScrewHoleDiameter = 4;

//Settings that change the size/scale/abilities/strength of your machine
latheCarriageGuidesDistance = 40;
latheCarriageWidth = 54;
latheCarriageFeet = true;
latheOldStyleCarriage = false;/* The old style carriage has an tapered top, which makes it harder to print (more overhang) the new style is easier to print and a better fit for the nut inside of it. */
latheUprightThickness = 10;

//Set $fs to 0.4 so circles have more details. This works for small circles, for big ones the $fa is limiting it.
// Adjusting it will create better circles but also more segments, which can cause your machine to buffer underrun.
$fs = 0.4;

/*************** ************* ***************/

//Include the MCAD libraries we need
use <MCAD/involute_gears.scad>
use <MCAD/bearing.scad>

/* List of default hole,bolts,bearings used in the different parts */
module latheGuideHole(h=30) {
	cylinder(r=latheGuideDiameter/2+latheExtraGap, h=h);
}
module latheGuideBolt(h=10) {
	union() {
		cylinder(r=latheGuideNutDiameter/2+latheExtraGap, h=h, $fn=6);
		translate([0, 0, -h*3]) latheGuideHole(h=h*6);
	}
}

module latheAxleHole(h=30) {
	cylinder(r=latheAxleDiameter/2+latheExtraGap, h=h*3);
}
module latheAxleBolt(h=10) {
	union() {
		cylinder(r=latheAxleNutDiameter/2+latheExtraGap, h=h, $fn=6);
		translate([0, 0, -h*3]) latheAxleHole(h=h*6);
	}
}

module latheBearing(h=7)
{
	union()
	{
		//Hole in which to fit the bearing
		cylinder(r=latheBearingDiameter/2+latheExtraGap, h=h+0.1);
		//Hole in which will fit the axle AND the nut on the axle which needs to rotate freely.
		translate([0, 0, -h]) cylinder(r=latheAxleNutDiameter/2*1.2+latheExtraGap, h=h*3);

		//Show a 608 bearing, but don't export it.
		% bearing(model=608);
	}
}

module latheMountScrewHole(h=10)
{
	 cylinder(r=latheScrewHoleDiameter/2+latheExtraGap,h=h);
}

