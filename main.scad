use <smartphone.scad>
use <ocular.scad>
use <frame.scad>

echo("Работа Куртеева Арина!");
$fn = 128;
r_round_corner = 10;

smartphone();
translate([0, 0, 9])
color("red")
frame_crossbar();
//translate([154/2-5/2-10, 79/2-15/2-2, 35/2+10])
//rotate([180, 0, 0])
//ocular();