/**
 * DB-25 Void source code.
 */
include <../settings.scad>

module createDb25Void(depth_multiplier) {
    depth_multiplier = depth_multiplier ? depth_multiplier : 1;
    
    screw = rm_screw_default;
    
    // Computed variables.
    screw_void_length = screw_length_default + db25_flange_depth + (tolerance_default*3);

    // Create the shapes:
    color(color_void_default)
        translate([
            0,
            0,
            -0.1,
        ])
        linear_extrude(db25_flange_depth + tolerance_default + 0.1)
        square([
            dsub_typical_max_height + (tolerance_default * 2),
            db_max_width + (tolerance_default * 2),
        ], true);
    color(color_void_default)
        linear_extrude((db25_flange_depth + tolerance_default + db25_terminal_depth) * depth_multiplier)
        square([
            db25_terminal_height + (tolerance_default * 2),
            db25_terminal_width + (tolerance_default * 2),
        ], true);
        
    // Screw holes.
    color(color_void_default)
        translate([
            0,
            db_screw_pitch / 2,
            db25_flange_depth + tolerance_default,
        ])
        cylinder(h=get_screw_void_depth(), d = getScrewHoleDiameter(screw), $fn=100);

    color(color_void_default)
        translate([
            0,
            db_screw_pitch / -2,
            db25_flange_depth + tolerance_default,
        ])
        cylinder(h=get_screw_void_depth(), d = getScrewHoleDiameter(screw), $fn=100);
}
