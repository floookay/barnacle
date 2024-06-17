KEY_UNIT = 19.05;
KEY_HOLE = 14;
KEY_SPACING = (KEY_UNIT-KEY_HOLE)/2;
ANGLE = 15;
HALF_SPACING = 40;
PLATE_THICKNESS = 1.6;

//plate_right();
plate_left();
//plate_middle();

module plate_middle() {
    translate([-3*KEY_UNIT/2,0,0])
    difference() {
        // 3x3
        cube([3*KEY_UNIT,3*KEY_UNIT,PLATE_THICKNESS]);
        for(i=[0:3]) {
            for(j=[0:3]) {
                translate([KEY_SPACING,KEY_SPACING,-1])
                translate([i*KEY_UNIT,j*KEY_UNIT,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            }
        }
    }
}

module plate_right() {
    translate([5.5*KEY_UNIT*cos(ANGLE)+HALF_SPACING/2,0,0])
    rotate([0,0,ANGLE])
    difference() {
        //// plate
        union() {
            translate([-4*KEY_UNIT,0,0]) union() {
                cube([4*KEY_UNIT,5*KEY_UNIT,PLATE_THICKNESS]);
                translate([-1.5*KEY_UNIT,0,0]) cube([5.5*KEY_UNIT,KEY_UNIT,PLATE_THICKNESS]);
            }
            translate([0,4*KEY_UNIT,0]) hull() {
                translate([-1,0,0]) cube([1,KEY_UNIT,PLATE_THICKNESS]);
                rotate([0,0,-ANGLE]) cube([KEY_UNIT*2,KEY_UNIT,PLATE_THICKNESS]);
            }
            translate([0,3*KEY_UNIT,0]) hull() {
                translate([-1,0,0]) cube([1,KEY_UNIT,PLATE_THICKNESS]);
                rotate([0,0,-ANGLE]) cube([KEY_UNIT*2.5,KEY_UNIT,PLATE_THICKNESS]);
            }
            translate([0,2*KEY_UNIT,0]) hull() {
                translate([-1,0,0]) cube([1,KEY_UNIT,PLATE_THICKNESS]);
                rotate([0,0,-ANGLE]) cube([KEY_UNIT*2.75,KEY_UNIT,PLATE_THICKNESS]);
            }
            translate([0,1*KEY_UNIT,0]) hull() {
                translate([-1,0,0]) cube([1,KEY_UNIT,PLATE_THICKNESS]);
                rotate([0,0,-ANGLE]) cube([KEY_UNIT*3.25,KEY_UNIT,PLATE_THICKNESS]);
            }
            translate([0,0*KEY_UNIT,0]) hull() {
                translate([-1,0,0]) cube([1,KEY_UNIT,PLATE_THICKNESS]);
                rotate([0,0,-ANGLE]) cube([KEY_UNIT*2.75,KEY_UNIT,PLATE_THICKNESS]);
            }
        }
        //// holes
        for(i=[0:3]) {
            for(j=[0:3]) {
                translate([-4*KEY_UNIT,0,0])
                translate([0,KEY_UNIT,0])
                translate([KEY_SPACING,KEY_SPACING,-1])
                translate([i*KEY_UNIT,j*KEY_UNIT,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            }
        }
        translate([-5.5*KEY_UNIT,0,0]) union() {
            translate([KEY_SPACING,KEY_SPACING,-1]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            translate([KEY_SPACING+KEY_UNIT*(1+1/2),KEY_SPACING,-1]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            translate([KEY_SPACING+KEY_UNIT*(1+2+0.25/2),KEY_SPACING,-1]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            translate([KEY_SPACING+KEY_UNIT*(1+2+1.25+0.25/2),KEY_SPACING,-1]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        }
        // mods
        translate([0,4*KEY_UNIT,0]) rotate([0,0,-ANGLE]) translate([KEY_SPACING,KEY_SPACING,-1]) union() {
            cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            translate([KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        }
        translate([0,3*KEY_UNIT,0]) rotate([0,0,-ANGLE]) translate([KEY_SPACING,KEY_SPACING,-1]) union() {
            cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            translate([(1+0.5/2)*KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        }
        translate([0,2*KEY_UNIT,0]) rotate([0,0,-ANGLE]) translate([KEY_SPACING,KEY_SPACING,-1]) union() {
            cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            translate([(1+0.75/2)*KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        }
        translate([0,1*KEY_UNIT,0]) rotate([0,0,-ANGLE]) translate([KEY_SPACING,KEY_SPACING,-1]) union() {
            cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            translate([(1+0.25/2)*KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            translate([(1+1.25)*KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        }
        translate([0,0*KEY_UNIT,0]) rotate([0,0,-ANGLE]) translate([KEY_SPACING,KEY_SPACING,-1]) union() {
            translate([(0.25/2)*KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            translate([(1.25+0.5/2)*KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        }
    }
}

module plate_left() {
    translate([-5.5*KEY_UNIT*cos(ANGLE)-HALF_SPACING/2,0,0])
    rotate([0,0,-ANGLE])
    difference() {
        //// plate
        union() {
            cube([4*KEY_UNIT,5*KEY_UNIT,PLATE_THICKNESS]);
            cube([5.5*KEY_UNIT,KEY_UNIT,PLATE_THICKNESS]);
            translate([0,4*KEY_UNIT,0]) hull() {
                cube([1,KEY_UNIT,PLATE_THICKNESS]);
                rotate([0,0,ANGLE]) translate([-KEY_UNIT*2,0,0]) cube([KEY_UNIT*2,KEY_UNIT,PLATE_THICKNESS]);
            }
            translate([0,3*KEY_UNIT,0]) hull() {
                cube([1,KEY_UNIT,PLATE_THICKNESS]);
                rotate([0,0,ANGLE]) translate([-KEY_UNIT*2.5,0,0]) cube([KEY_UNIT*2.5,KEY_UNIT,PLATE_THICKNESS]);
            }
            translate([0,2*KEY_UNIT,0]) hull() {
                cube([1,KEY_UNIT,PLATE_THICKNESS]);
                rotate([0,0,ANGLE]) translate([-KEY_UNIT*2.75,0,0]) cube([KEY_UNIT*2.75,KEY_UNIT,PLATE_THICKNESS]);
            }
            translate([0,1*KEY_UNIT,0]) hull() {
                cube([1,KEY_UNIT,PLATE_THICKNESS]);
                rotate([0,0,ANGLE]) translate([-KEY_UNIT*2.75,0,0]) cube([KEY_UNIT*2.75,KEY_UNIT,PLATE_THICKNESS]);
            }
            translate([0,0*KEY_UNIT,0]) hull() {
                cube([1,KEY_UNIT,PLATE_THICKNESS]);
                rotate([0,0,ANGLE]) translate([-KEY_UNIT*2.5,0,0]) cube([KEY_UNIT*2.25,KEY_UNIT,PLATE_THICKNESS]);
            }
        }
        //// holes
        for(i=[0:3]) {
            for(j=[0:3]) {
                translate([0,KEY_UNIT,0])
                translate([KEY_SPACING,KEY_SPACING,-1])
                translate([i*KEY_UNIT,j*KEY_UNIT,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            }
        }
        // bottom row
        translate([KEY_SPACING,KEY_SPACING,-1]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        translate([KEY_SPACING+KEY_UNIT*(1+0.25/2),KEY_SPACING,-1]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        translate([KEY_SPACING+KEY_UNIT*(1.25+1+1.25/2),KEY_SPACING,-1]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        translate([KEY_SPACING+KEY_UNIT*(1.25+2.25+1),KEY_SPACING,-1]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        // mods
        translate([0,4*KEY_UNIT,0]) rotate([0,0,ANGLE]) translate([-KEY_UNIT*2+KEY_SPACING,KEY_SPACING,-1]) union() {
            cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            translate([KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        }
        translate([0,3*KEY_UNIT,0]) rotate([0,0,ANGLE]) translate([-KEY_UNIT*2.5+KEY_SPACING,KEY_SPACING,-1]) union() {
            translate([(0.5/2)*KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            translate([1.5*KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        }
        translate([0,2*KEY_UNIT,0]) rotate([0,0,ANGLE]) translate([-KEY_UNIT*2.75+KEY_SPACING,KEY_SPACING,-1]) union() {
            translate([(0.75/2)*KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            translate([1.75*KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        }
        translate([0,1*KEY_UNIT,0]) rotate([0,0,ANGLE]) translate([-KEY_UNIT*2.75+KEY_SPACING,KEY_SPACING,-1]) union() {
            translate([(0.75/2)*KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            translate([1.75*KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        }
        translate([0,0*KEY_UNIT,0]) rotate([0,0,ANGLE]) translate([-KEY_UNIT*2.5+KEY_SPACING,KEY_SPACING,-1]) union() {
            translate([(0.25/2)*KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
            translate([(1.25+0.25/2)*KEY_UNIT,0,0]) cube([KEY_HOLE,KEY_HOLE,PLATE_THICKNESS+2]);
        }

    }
}