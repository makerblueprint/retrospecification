/**
 * "DB-25 Flush Void" source code.
 */
include <settings.scad>

debug = false;

// Create the shapes:
// Connector void.
// TODO: refine so it follows the contour of the connector.
color(color_void_default)
    linear_extrude(db25_connector_depth_max)
    square([
        db25_connector_width_max + (tolerance_default*2),
        db25_connector_height_max + (tolerance_default*2),
    ], true);

// Screw holes.
color(color_void_default)
    translate([
        db25_screw_gauge / 2,
        0,
        0,
    ])
    cylinder(h=get_screw_void_depth(wall_thickness_default), r=get_screw_void_radius(), $fn=100);
color(color_void_default)
    translate([
        db25_screw_gauge / 2 * -1,
        0,
        0,
    ])
    cylinder(h=get_screw_void_depth(wall_thickness_default), r=get_screw_void_radius(), $fn=100);

if (debug) {
    debug_base();
}
