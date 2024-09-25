/*
OpenSCAD script to make a keyboard top frame.
The design is written for 3D printing.
*/

K=25.4;
U = 0.75*K; // standard key spacing

// list of key locations
keys = [
    // row 1
    [1*U+K*15/32, 1*U],
    [1*U+K*15/32+1*K*15/16, 1*U],
    [1*U+K*15/32+2*K*15/16, 1*U],
    [6*U, 1*U],
    // row 2
    [0.25*U+0.375*U+1*U, 2*U],
    [0.5*U+0.750*U+2*U, 2*U],
    [0.5*U+0.750*U+3*U, 2*U],
    [0.5*U+0.750*U+4*U, 2*U],
    [0.5*U+0.750*U+5*U, 2*U],
    [0.5*U+0.750*U+6*U, 2*U],
    // row 3
    [0.375*U+1*U, 3*U],
    [0.750*U+2*U, 3*U],
    [0.750*U+3*U, 3*U],
    [0.750*U+4*U, 3*U],
    [0.750*U+5*U, 3*U],
    [0.750*U+6*U, 3*U],
    // row 4
    [0.250*U+1*U, 4*U],
    [0.500*U+2*U, 4*U],
    [0.500*U+3*U, 4*U],
    [0.500*U+4*U, 4*U],
    [0.500*U+5*U, 4*U],
    [0.500*U+6*U, 4*U],
    // row 5
    [1*U, 5*U],
    [2*U, 5*U],
    [3*U, 5*U],
    [4*U, 5*U],
    [5*U, 5*U],
    [6*U, 5*U]
];

Ncol = 6; 
Nrow = 5;

$width = 8*U;
$height = (1+Nrow)*U;
$depth = 8.0;

$w_ridge = 2.0;
$d_ridge = 0.063*25.4;

$cutout_size = 0.551*25.4; // dimension of of square key cutouts
$mtg = 2.0; // mounting hole diameter

$vpr = [0, 0, 0]; // viewing angle
$vpd = 30*U; // viewing distance
$vpt = [$width/2, $height/2, 10];
$fn = 10; // number of segments in a circle

// here we create a slab and subtract from it.
difference() {
    
    // the slab
    color([0.0,0.3,0.5]) cube([$width, $height, $depth]);
    
    // make the key switch cutouts
    for (key = [0:len(keys)-1]) {
        translate(concat(keys[key], [0.0])) cube(size=[$cutout_size, $cutout_size, 20], center=true);
    }
    
    // remove some depth fromt he bottom, leaving a ridge around the outside.
    translate([$w_ridge, $w_ridge, $d_ridge-$depth]) cube(size=[$width-2*$w_ridge, $height-2*$w_ridge, $depth]);
    
    // make some mounting holes
    translate([U/3, U/3, 0.0])                    cylinder(20, r=$mtg, center=true);
    translate([U/3, 2.5*U, 0.0])                  cylinder(20, r=$mtg, center=true);
    translate([U/3, $height-U/3, 0.0])            cylinder(20, r=$mtg, center=true);
    translate([$width-U/3, U/3, 0.0])             cylinder(20, r=$mtg, center=true);
    translate([$width-U/3, 2.5*U, 0.0])           cylinder(20, r=$mtg, center=true);
    translate([$width -U/3, $height-U/3, 0.0])    cylinder(20, r=$mtg, center=true);    
    translate([3.5*U, U/3, 0.0])                  cylinder(20, r=$mtg, center=true);
    translate([3.5*U, $height-U/3, 0.0])          cylinder(20, r=$mtg, center=true);
    
}

