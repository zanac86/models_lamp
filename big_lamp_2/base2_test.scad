$fn=180;

h1=0.9;
h2=3.0;
d0=99.0;
d1=95.6;
d2=d1-3*2;

difference(){
union(){
translate([0,0,0])
cylinder(h=h1, d=d0);
translate([0,0, h1])
cylinder(h=h2, d=d1);
}

union(){
translate([0,0,0])
cylinder(h=h1+h2, d=d2);
}
}