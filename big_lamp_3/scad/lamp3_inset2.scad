$fn=180;

H=14;
out_diam=46.6;
in_diam=32.4;

difference(){
    cylinder(h=H, d=out_diam);
    cylinder(h=H, d=in_diam);
}