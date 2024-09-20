
$U = 0.75*25.4;

$Ncol = 6;
$Nrow = 5;

$width = (1+$Ncol)*$U;
$height = (1+$Nrow)*$U;
$depth = 8.0;

$w_ridge = 2.0;
$d_ridge = 3.0;


$vpr = [45, 0, 45];
$vpd = 20*$U;


difference() {
    color([0.0,0.3,0.5]) 
        cube([$width, $height, $depth]);
    // remove some cylinders
    for (row = [1:1:$Nrow]) {
        for (col = [1:1:$Ncol]) {
            translate([col*$U, row*$U, 0.0]) 
                //cylinder (h = 20, r=2, center = true, $fn=15);
                cube(size=[10, 10, 20], center=true);
        }
    }   
    // remove some depth leaving a ridge around the outside.
    translate([$w_ridge, $w_ridge, $depth-$d_ridge])    
        cube(size=[$width-2*$w_ridge, $height-2*$w_ridge, 2*$depth]);
}

