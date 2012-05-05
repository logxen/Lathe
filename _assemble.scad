include <Util.scad>

use <Bearing_block.scad>
use <Tail_slide.scad>
use <Uprights.scad>
use <Bevel_gear.scad>
use <Hand_crank.scad>
use <Lock_wheel.scad>
use <Star_crank.scad>
use <X_carriage.scad>
use <Z_carriage_back.scad>
use <Z_carriage_front.scad>
use <Z_carriage_left.scad>
use <Transmission_v2/Center_gears.scad>
use <Transmission_v2/Upper_gear.scad>
use <Transmission_v2/Lower_gear.scad>
use <Chuck/Base.scad>
use <Chuck/Face.scad>
use <Chuck/Jaw_guide.scad>
use <Chuck/Jaws.scad>
use <Chuck/Lock_ring.scad>
use <Chuck/Piston.scad>
use <Chuck/Planet_gears.scad>

module chuck() {
	for(i=[0:3]) rotate([0,0,90*i+18]) translate([27,0,20])
		rotate([0,180,0]) chuck_planet_gear();
	translate([0,0,20]) rotate([0,180,0]) chuck_lock_ring();
	translate([0,0,21]) chuck_base();
	translate([0,0,55]) rotate([0,180,-20]) chuck_piston();
	translate([0,0,80]) rotate([0,180,0]) chuck_face();
	translate([0,0,82]) chuck_jaw_guide();
	for(i=[0:3]) rotate([0,0,90*i]) translate([0,-25,84]) chuck_jaw();
}

translate([latheCarriageGuidesDistance/2+55,148+latheCarriageWidth/2,22])
	rotate([0,90, 0]) Hand_crank();
translate([0,120+latheCarriageWidth/2,17.5]) rotate([-90,0,0]) Bearing_block();
translate([25,148+latheCarriageWidth/2,23]) rotate([0,-90,0]) lathe_bevel_gear();
translate([0,128+latheCarriageWidth/2,23]) rotate([-90,0,0]) lathe_bevel_gear();

translate([0,120+latheCarriageWidth/2,48]) rotate([0,90,-90]) Uprights();
translate([0,108+latheCarriageWidth/2,77]) rotate([0,90,-90]) Star_crank();
translate([0,82+latheCarriageWidth/2,77]) rotate([0,90, 90]) Lock_wheel();
translate([0,80+latheCarriageWidth/2,48]) rotate([0,90,-90]) Tail_slide();

translate([ latheCarriageGuidesDistance/2+5, 0,46]) rotate([-90,0,-90]) X_carriage();
translate([-latheCarriageGuidesDistance/2-21, 0,24]) rotate([-90,0, 90]) Z_carriage_back();
translate([ latheCarriageGuidesDistance/2+37, 0,24]) rotate([-90,0,-90]) Z_carriage_front();
translate([0,-latheCarriageWidth/2,21]) rotate([-90, 0, 0]) Z_carriage_left();
translate([0, latheCarriageWidth/2,21]) rotate([-90, 0, 0])
		mirror([ 0, 0, 1 ]) Z_carriage_left();

translate([0,-158+latheUprightThickness-latheCarriageWidth/2,77]) rotate([-90,0,0]) chuck();
translate([0,-160+latheUprightThickness-latheCarriageWidth/2,48]) rotate([0,90,-90]) Uprights();

translate([0,-210-latheCarriageWidth/2,48]) rotate([0,90,-90]) Uprights();
translate([0,-165-latheCarriageWidth/2,51]) rotate([90,0,0]) Center_gears();
translate([0,-165-latheCarriageWidth/2,77]) rotate([90,15.5,0]) Upper_gear();
translate([0,-180-latheCarriageWidth/2,22]) rotate([90,0,0]) Lower_gear();

