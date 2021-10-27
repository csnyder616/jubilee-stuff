// Quick-and-dirty plate to mount the Duet 3 tool distribution board to the 2020 frame

// parameters (mm)

plateThickness = 2;

pcbMountXDelta = 62;
pcbMountYDelta = 37;
padding = 10;

pcbMountHoleDiameter = 3.5;
plateMountHoleDiameter = 5.5;

//--------------------

difference() {
    // plate
    translate([-pcbMountXDelta / 2 - padding, -pcbMountYDelta / 2 - padding, 0])
        cube([
            pcbMountXDelta + padding*2,
            pcbMountYDelta + padding*2,
            plateThickness]);
    // pcb mounting holes
    translate([-pcbMountXDelta / 2, -pcbMountYDelta / 2, -1])
        cylinder(h = plateThickness+2, d = pcbMountHoleDiameter);
    translate([-pcbMountXDelta / 2, pcbMountYDelta / 2, -1])
        cylinder(h = plateThickness+2, d = pcbMountHoleDiameter);
    translate([pcbMountXDelta / 2, -pcbMountYDelta / 2, -1])
        cylinder(h = plateThickness+2, d = pcbMountHoleDiameter);
    translate([pcbMountXDelta / 2, pcbMountYDelta / 2, -1])
        cylinder(h = plateThickness+2, d = pcbMountHoleDiameter);

    // plate mounting holes
    translate([-pcbMountXDelta / 3, -pcbMountYDelta / 2, -1])
        cylinder(h = plateThickness+2, d = plateMountHoleDiameter);
    translate([pcbMountXDelta / 3, -pcbMountYDelta / 2, -1])
        cylinder(h = plateThickness+2, d = plateMountHoleDiameter);
}
    