/**
 * 2015 RAM Rear-View-Mirror CAV 1/4 >POM< stock part void.
 *
 * This is the void for the hardened-plastic mount found within the stock
 * mirror housing.
 */
include <../settings.scad>
include <../../../../../../../models/boxes/box.scad>

module createCAV14POMVoid(approach, tolerance) {
    tolerance = tolerance ? tolerance : tolerance_tight;
    approach = approach ? approach : 0;
    dt = tolerance * 2;
    thickness = cav_1_4_pom_thickness + (tolerance * 1);
    z_offset = cav_1_4_pom_tower_thickness - tolerance;
    top = cav_1_4_pom_tower_thickness + cav_1_4_pom_thickness;

    color(color_void_default)
        translate([
            0,
            cav_1_4_pom_tower_y_offset,
            cav_1_4_pom_tower_thickness * -1,
        ])
        cylinder(h=cav_1_4_pom_tower_thickness * 2, d=cav_1_4_pom_tower_diameter + (tolerance_default * 2), $fn=100);
    color(color_void_default)
        translate([
            (cav_1_4_pom_width_min + dt) / -2,
            0,
            z_offset,
        ])
        linear_extrude(thickness + approach)
        square([
            cav_1_4_pom_width_min + dt,
            cav_1_4_pom_length + dt,
        ], false);
    color(color_void_default)
        translate([
            (cav_1_4_pom_width + dt) / -2,
            0,
            z_offset,
        ])
        linear_extrude(thickness + approach)
        square([
            cav_1_4_pom_width + dt,
            (cav_1_4_pom_length - cav_1_4_pom_narrow_length) + dt,
        ], false);
    color(color_void_default)
        translate([
            (cav_1_4_pom_width_max - (cav_1_4_pom_pivot_width * 2) + dt) / -2,
            0,
            z_offset,
        ])
        linear_extrude(thickness + approach)
        square([
            cav_1_4_pom_width_max - (cav_1_4_pom_pivot_width * 2) + dt,
            cav_1_4_pom_pivot_large_diameter + dt,
        ], false);
    color(color_void_default)
        translate([
            (cav_1_4_pom_width_max + dt) / -2,
            (cav_1_4_pom_pivot_large_diameter / 2) - (cav_1_4_pom_pivot_diameter / 2),
            top - cav_1_4_pom_tab_z_offset,
        ])
        linear_extrude(cav_1_4_pom_tab_z_offset)
        square([
            cav_1_4_pom_width_max + dt,
            cav_1_4_pom_pivot_diameter + dt,
        ], false);
    color(color_void_default)
        translate([
            (cav_1_4_pom_width_max + dt) / -2,
            (cav_1_4_pom_pivot_large_diameter / 2) - (cav_1_4_pom_pivot_diameter / 2),
            top,
        ])
        linear_extrude(approach)
        square([
            cav_1_4_pom_width_max + dt,
            cav_1_4_pom_pivot_diameter + dt,
        ], false);
    color(color_void_default)
        translate([
            (cav_1_4_pom_width_max + dt) / -2,
            (cav_1_4_pom_pivot_large_diameter + dt) / 2,
            top - cav_1_4_pom_tab_z_offset,
        ])
        rotate([
            0,
            90,
            0,
        ])
        cylinder(h=cav_1_4_pom_width_max + dt, d=cav_1_4_pom_pivot_diameter + dt, $fn=100);

    // Tab latch voids.
    tw = wall_thickness_default * 3;
    color(color_void_default)
        translate([
            (cav_1_4_pom_tab_pair_width + dt) / -2,
            cav_1_4_pom_tab_y_offset - ((cav_1_4_pom_tab_length + dt) / 2),
            cav_1_4_pom_tower_thickness,
        ])
        linear_extrude(cav_1_4_pom_thickness - cav_1_4_pom_tab_z_offset)
        square([
            cav_1_4_pom_tab_pair_width + dt,
            cav_1_4_pom_tab_length + dt,
        ], false);
    translate([
            0,
            cav_1_4_pom_tab_y_offset,
            top - (cav_1_4_pom_thickness / 2),
        ])
        createHollowBox([
            cav_1_4_pom_tab_length + wall_thickness_default,
            cav_1_4_pom_tab_pair_width + (wall_thickness_default * 6),
            cav_1_4_pom_thickness,
        ], [
            cav_1_4_pom_tab_length,
            cav_1_4_pom_tab_pair_width + (wall_thickness_default * 3),
            cav_1_4_pom_thickness,
        ]);
    color(color_void_default)
        translate([
            cav_1_4_pom_width / 2,
            cav_1_4_pom_tab_y_offset - ((cav_1_4_pom_tab_length + dt) / 2),
            top - cav_1_4_pom_tab_z_offset,
        ])
        rotate([
            0,
            -70,
            0,
        ])
        linear_extrude(5)
        square([
            7,
            cav_1_4_pom_tab_length + dt,
        ], false);
    color(color_void_default)
        translate([
            cav_1_4_pom_width / 2,
            cav_1_4_pom_tab_y_offset - ((cav_1_4_pom_tab_length + dt) / 2),
            top,
        ])
        linear_extrude(approach)
        square([
            7,
            cav_1_4_pom_tab_length + dt,
        ], false);
    color(color_void_default)
        translate([
            cav_1_4_pom_width / -2,
            cav_1_4_pom_tab_y_offset - ((cav_1_4_pom_tab_length + dt) / 2),
            top - cav_1_4_pom_tab_z_offset,
        ])
        rotate([
            0,
            -20,
            0,
        ])
        linear_extrude(7)
        square([
            5,
            cav_1_4_pom_tab_length + dt,
        ], false);
    color(color_void_default)
        translate([
            (cav_1_4_pom_width / -2) - 7,
            cav_1_4_pom_tab_y_offset - ((cav_1_4_pom_tab_length + dt) / 2),
            top,
        ])
        linear_extrude(approach)
        square([
            7,
            cav_1_4_pom_tab_length + dt,
        ], false);

}