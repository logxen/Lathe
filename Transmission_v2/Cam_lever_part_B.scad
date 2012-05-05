% translate([0,-8,0]) import_stl("Cam_lever_part_B.stl");

union() {
	difference() {
		linear_extrude(height=6) {
			difference() {
				union() {
					translate([8.5,0]) circle(r=6);
					translate([-8.5,0]) circle(r=6);
					translate([-8.5,-6]) square([17,12]);
				}
				translate([8.5,0]) circle(r=0.5);
				translate([-8.5,0]) circle(r=0.5);
			}
		}
		translate([0,0,3]) linear_extrude(height=3) {
			translate([-8.5,0]) circle(r=6);
			translate([-8.5,0]) rotate(-20) translate([-4,0]) square([10,10]);
		}	
	}
	linear_extrude(height=7) {
		difference() {
			union() {
				translate([8.5,0]) circle(r=5);
			}
			translate([8.5,0]) circle(r=0.5);
		}
	}
}