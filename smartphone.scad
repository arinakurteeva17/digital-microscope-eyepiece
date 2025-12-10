$fn = 128;
r_round_corner = 15;

module smartphone(){
    block();
    cameras();
}

module cameras(){
    color("blue")
    translate([154/2-13,79/2-13,0])
    cylinder(d=14,h=15, center=true);
}

module block(){
    // Желтый корпус — ОБЯЗАТЕЛЬНО указываем цвет
    color("yellow")
    hull(){
        translate([154/2 - r_round_corner/2,79/2 - r_round_corner/2,0])
        cylinder(d=r_round_corner, h=9,center=true);
        
        mirror([1,0,0])
        translate([154/2 - r_round_corner/2,79/2 - r_round_corner/2,0])
        cylinder(d=r_round_corner, h=9,center=true);
        
        mirror([0,1,0])
        translate([154/2 - r_round_corner/2,79/2 - r_round_corner/2,0])
        cylinder(d=r_round_corner, h=9,center=true);
        
        mirror([1,0,0])
        mirror([0,1,0])
        translate([154/2 - r_round_corner/2,79/2 - r_round_corner/2,0])
        cylinder(d=r_round_corner, h=9,center=true);
    }

    // Зеленая L-рамка — отдельно, но поверх
    color("green")
    union(){
        // Вертикальная полоса слева
        translate([-154/2 - 5, 0, 0])
        cube([10, 79 + 20, 9], center=true);

        // Горизонтальная полоса снизу
        translate([0, -79/2 - 5, 0])
        cube([154 + 20, 10, 9], center=true);
    }
}