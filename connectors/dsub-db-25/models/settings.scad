include <../../../../models/settings.scad>

/**
 * DB-25 default settings.
 */
db25_connector_width_top = 40;
db25_connector_width_bottom = 38.5;
db25_connector_width_max = db25_connector_width_top;
db25_connector_height_max = 9.2;
db25_connector_depth_max = 6;
db25_flange_width = 54;
db25_flange_height = 12.5;
db25_flange_depth = 1.1;
db25_terminal_width = 41;
db25_terminal_height = 10.25;
db25_terminal_depth = 10;
db25_screw_gauge = 47.5;


// TODO: phase out the above vars for these
/**
 * DB-25 default settings.
 *
 * Orientation: place the connector on a table so the flange is parallel to
 * the table & the back of the connector is skyward.
 */
db25_typical_flange_width = db25_flange_width;
db25_typical_metal_flange_thickness = db25_flange_depth;
db25_typical_flange_thickness = db25_typical_metal_flange_thickness;
db25_typical_terminal_thickness = db25_terminal_depth;
db25_screw_pitch = db25_screw_gauge;

echo("DB-25 settings loaded");
