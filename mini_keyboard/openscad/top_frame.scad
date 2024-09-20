
$U = 0.75*25.4;
$width = 8*$U;
$height = 5*$U;
$depth = 10.0;

$w_ridge = 2.0;
$d_ridge = 3.0;

$Nx = 5;

$vpr = [45, 0, 45];
$vpd = 20*$U;


difference() {
    color([0.0,0.3,0.5]) 
        cube([$width, $height, $depth]);
    // remove some cylinders
    for (i = [1:1:$Nx]) {
        translate([i*$U, 1.0*$U, 0.0]) 
            cylinder (h = 20, r=2, center = true, $fn=15);
    }
    // remove some depth leaving a ridge around the outside.
    translate([$w_ridge, $w_ridge, $depth-$d_ridge])    
        cube([$width-2*$w_ridge, $height-2*$w_ridge, 2*$depth]);
}

