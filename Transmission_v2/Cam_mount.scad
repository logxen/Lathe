% import_stl("Cam_mount.stl");

union() {
	difference() 	{
		translate([-8,-25,0]) cube([16,50,3]);
		translate([ 0, 20,-1]) cylinder(r=1.8,h=5);
		translate([ 0,-20,-1]) cylinder(r=1.8,h=5);
	}
	difference() {
		translate([-8,-15.5, 0]) cube([16, 9,13]);
		translate([ 0,-16.0,10]) rotate([-90,0,0]) cylinder(r=1,h=12);
	}
	difference() {
		translate([-8, 6.5, 0]) cube([16, 9,13]);
		translate([ 0, 5.0,10]) rotate([-90,0,0]) cylinder(r=1,h=12);
	}
}
