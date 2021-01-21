// Andre Betz
// github@AndreBetz.de
// NC KEG open
// fuelldichte 30%
// Zwieselbrau.de

HeightAll   = 22;
NC_D        = 15.5;
NC_D2       = 16.5;
NC_ToBallH  = 14.5;
Ball_D      = 14;
Ball_H      = 2;
Press_H     = 3;
HolderD     = 23;
StiftH      = 7;
StiftPressH = 3;

$fn=100;

HeightAllPress = HeightAll - StiftPressH;
topHight = NC_ToBallH - (NC_D-Ball_D)/2 - StiftPressH;

echo(topHight);
translate([0,0,-topHight])
    cylinder(h=topHight,r=NC_D/2,center=false);
posSchraeg1 = topHight+(NC_D-Ball_D)/2;
translate([0,0,-posSchraeg1])
    cylinder(h=(NC_D-Ball_D)/2,r1=Ball_D/2,r2=NC_D/2,center=false);
posBallTiefe = posSchraeg1 + Ball_H;
translate([0,0,-posBallTiefe])
    cylinder(h=Ball_H,r=Ball_D/2,center=false);
posSchraeg2 = posBallTiefe + (NC_D-Ball_D)/2;
translate([0,0,-posSchraeg2])
    cylinder(h=(NC_D-Ball_D)/2,r1=NC_D/2,r2=Ball_D/2,center=false);
hightRest = HeightAllPress - posSchraeg2;
translate([0,0,-HeightAllPress])
    cylinder(h=hightRest,r=NC_D/2,center=false);
posHalterung = HeightAllPress + hightRest;
translate([0,0,-HeightAllPress-3])
    cylinder(h=3,r=HolderD/2,center=false);
