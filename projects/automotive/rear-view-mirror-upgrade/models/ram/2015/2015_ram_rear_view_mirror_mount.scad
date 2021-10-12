/**
 * 2015 RAM Rear-View-Mirror mount.
 */
include <settings.scad>
include <voids/cav_1_4_pom.scad>

debug = 0;
y_offset = -10;

tolerance = tolerance_tight;

if (debug) {
    createMain();
    createVoids();
}
else {
    difference() {
        createMain();
        createVoids();
    }
}

module createMain() {
    if (!debug) {
        difference() {
            color(color_default)
                translate([
                        0,
                        wall_thickness_default * -1,
                        -16,
                    ])
                    rotate([
                        -90,
                        0,
                        0,
                    ])
                    cylinder(h=cav_1_4_pom_length + (tolerance + wall_thickness_default * 2), d = 85, $fn=300);
            color(color_void_default)
                translate([
                    110,
                    -3,
                    0,
                ])
                rotate([
                    0,
                    180,
                    0,
                ])
                linear_extrude(185)
                square([
                    220,
                    100,
                ], false);
         }
    }
}

module createVoids() {
    translate([
            0,
            33,
            0,
        ])
        rotate([
            0,
            0,
            90,
        ])
        createRetroModulesHolePattern(0, 7, ["r"]);

    translate([
            0,
            0,
            cav_1_4_pom_thickness_max,
        ])
        rotate([
            0,
            180,
            0,
        ])
        createCAV14POMVoid(5);
}
