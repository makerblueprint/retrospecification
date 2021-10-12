/**
 * 2015 RAM Rear-View-Mirror Mic stock part void.
 *
 * This is the void for one of the M3951-PCB-G mic modules.
 */
include <../settings.scad>

createM3951PcbGVoid();

module createM3951PcbGVoid(tolerance) {
    tolerance = tolerance ? tolerance : tolerance_tight;

    wid = 58;
    width = 336;
    height = 369;

    difference(){
        cube([wid,wid,2]);
        translate([wid/4,wid/4,3])
            scale([.5*wid/width,.5*wid/height,.02])
                surface(file="../reference/mic.png", invert=true);

    }
}