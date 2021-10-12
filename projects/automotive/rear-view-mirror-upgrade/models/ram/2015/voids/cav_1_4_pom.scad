/**
 * 2015 RAM Rear-View-Mirror CAV 1/4 >POM< stock part void.
 *
 * This is the void for the hardened-plastic mount found within the stock
 * mirror housing.
 */
include <../settings.scad>
include <../../../../../../../models/boxes/box.scad>

module createCAV14POMVoid(approach, screw_length, tolerance) {
    tolerance = tolerance ? tolerance : tolerance_tight;
    approach = approach ? approach : 0;
    screw_length = screw_length ? screw_length : 10;
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
        cylinder(h=cav_1_4_pom_tower_thickness * 2, d=cav_1_4_pom_tower_diameter + 8, $fn=100);
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
            cav_1_4_pom_tower_thickness - tolerance,
        ])
        linear_extrude(cav_1_4_pom_thickness + tolerance + approach)
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

    // Tab latch voids.
    color(color_void_default)
        translate([
            (cav_1_4_pom_tab_pair_width + dt) / -2,
            cav_1_4_pom_tab_y_offset - ((cav_1_4_pom_tab_length + dt) / 2),
            cav_1_4_pom_tower_thickness,
        ])
        linear_extrude(cav_1_4_pom_thickness)
        square([
            cav_1_4_pom_tab_pair_width + dt,
            cav_1_4_pom_tab_length + dt,
        ], false);
    color(color_void_default)
        translate([
            (cav_1_4_pom_tab_pair_width + dt + 12) / -2,
            cav_1_4_pom_tab_y_offset - ((cav_1_4_pom_tab_length + dt) / 2),
            top - cav_1_4_pom_tab_z_offset,
        ])
        linear_extrude(cav_1_4_pom_tab_z_offset)
        square([
            cav_1_4_pom_tab_pair_width + dt + 12,
            cav_1_4_pom_tab_length + dt,
        ], false);
    color(color_void_default)
            translate([
                (cav_1_4_pom_tab_pair_width / 2) + 1.9,
                cav_1_4_pom_tab_y_offset,
                top - cav_1_4_pom_tab_z_offset,
            ])
            rotate([
                0,
                180,
                0,
            ])
            cylinder(h=screw_length, d=getScrewHoleDiameter(rm_screw_default), $fn=100);
    color(color_void_default)
            translate([
                (cav_1_4_pom_tab_pair_width / -2) - 1.9,
                cav_1_4_pom_tab_y_offset,
                top - cav_1_4_pom_tab_z_offset,
            ])
            rotate([
                0,
                180,
                0,
            ])
            cylinder(h=screw_length, d=getScrewHoleDiameter(rm_screw_default), $fn=100);
}