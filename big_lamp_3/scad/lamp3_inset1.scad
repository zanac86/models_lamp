$fn=180;

// d - out diam
// d0 - in diam
module sector(h, d, d0, a1, a2) {
    if (a2 - a1 > 180) {
        difference() {
            cylinder(h=h, d=d);
            translate([0,0,-0.5]) sector(h+1, d+1, a2-360, a1); 
        }
    } else {
        difference() {
            cylinder(h=h, d=d);
            rotate([0,0,a1]) translate([-d/2, -d/2, -0.5])
                cube([d, d/2, h+1]);
            rotate([0,0,a2]) translate([-d/2, 0, -0.5])
                cube([d, d/2, h+1]);
            cylinder(h=h, d=d0);
        }
    }
} 

H=10;
WALL=2;
A_SECT=45;

// glass in diam
out_diam_1=95.8;
out_diam_2=out_diam_1-WALL*2;

// for pipe diam
in_diam_2=50.8;
in_diam_1=in_diam_2+WALL*2;


difference() {
    cylinder(d=out_diam_1, h=H);
    cylinder(d=out_diam_2, h=H);
}

difference() {
    cylinder(d=in_diam_1, h=H);
    cylinder(d=in_diam_2, h=H);
}

for(i=[0:3]){
    rotate([0,0,i*120])
    translate([0, 0, 0])
    sector(H, out_diam_1, in_diam_2, 0, A_SECT);
}



