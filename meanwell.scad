rs75_width = 98;
rs75_height = 38;
rs75_length = 129;
rs150_width = 99;
rs150_height = 38;
rs150_length = 199;

case_width = rs75_width;
case_height = rs75_height;
case_length = 140;
case_thickness = 2;
extra = 0.2;

$fn=50;

module rs75() {
    difference() {
        cube([rs75_width, rs75_length, rs75_height], center=true);
        translate([1.5, rs75_length/2, 1.5]) cube([rs75_width, 20, rs75_height], center=true);
        translate([1.5, -rs75_length/2, 1.5]) cube([rs75_width, 10, rs75_height], center=true);
        // buttom holes
        translate([rs75_width/2-7,rs75_length/2-4.5-122.5,-rs75_height/2]) cylinder(d=3.5, h=rs75_height, center=true);
        translate([rs75_width/2-31-33,rs75_length/2-78,-rs75_height/2]) cylinder(d=3, h=rs75_height, center=true);
        translate([rs75_width/2-31,rs75_length/2-78,-rs75_height/2]) cylinder(d=3, h=rs75_height, center=true);
        translate([rs75_width/2-7-85.5, rs75_length/2-4.5,-rs75_height/2]) cylinder(d=3, h=rs75_height, center=true);
        translate([rs75_width/2-4.5, rs75_length/2-4.5,-rs75_height/2]) cylinder(d=3, h=rs75_height, center=true);
        // side holes 
        translate([-rs75_width/2, rs75_length/2-32,rs75_height/2-18.5]) rotate([0,90,0]) cylinder(d=3, h=rs75_height, center=true);
        translate([-rs75_width/2, rs75_length/2-32-77,rs75_height/2-9.5]) rotate([0,90,0]) cylinder(d=3, h=rs75_height, center=true);
        translate([-rs75_width/2, rs75_length/2-32-77,rs75_height/2-9.5-18]) rotate([0,90,0]) cylinder(d=3, h=rs75_height, center=true);
        translate([-rs75_width/2, rs75_length/2-6.5,rs75_height/2-9]) rotate([0,90,0]) cylinder(d=3.5, h=rs75_height, center=true);
    }
    translate([10, rs75_length/2-5, -5]) cube([50, 10, 15], center=true);
}

module rs150() {
    difference() {
        cube([rs150_width, rs150_length, rs150_height], center=true);
        translate([1.5, rs150_length/2, 1.5]) cube([rs150_width, 20, rs150_height], center=true);
        translate([1.5, -rs150_length/2, 1.5]) cube([rs150_width, 10, rs150_height], center=true);
        // buttom holes
        translate([rs150_width/2-7,rs150_length/2-197,-rs150_height/2]) cylinder(d=3.5, h=rs150_height, center=true);
        translate([rs150_width/2-9,rs150_length/2-4.5-57.5,-rs150_height/2]) cylinder(d=3, h=rs150_height, center=true);
        translate([rs150_width/2-9-80,rs150_length/2-4.5-57.5,-rs150_height/2]) cylinder(d=3, h=rs150_height, center=true);
        translate([rs150_width/2-9,rs150_length/2-4.5-57.5-120,-rs150_height/2]) cylinder(d=3, h=rs150_height, center=true);
        translate([rs150_width/2-9-80,rs150_length/2-4.5-57.5-120,-rs150_height/2]) cylinder(d=3, h=rs150_height, center=true);
        translate([rs75_width/2-7-85.5, rs150_length/2-4.5,-rs150_height/2]) cylinder(d=3, h=rs150_height, center=true);
        translate([rs150_width/2-4.5, rs150_length/2-4.5,-rs150_height/2]) cylinder(d=3, h=rs150_height, center=true);
        // side holes 
        translate([-rs150_width/2, rs150_length/2-22,rs150_height/2-18]) rotate([0,90,0]) cylinder(d=3, h=rs150_height, center=true);
        translate([-rs150_width/2, rs150_length/2-22-157,rs150_height/2-9.5]) rotate([0,90,0]) cylinder(d=3, h=rs75_height, center=true);
        translate([-rs150_width/2, rs150_length/2-22-157,rs150_height/2-9.5-18]) rotate([0,90,0]) cylinder(d=3, h=rs150_height, center=true);
        translate([-rs150_width/2, rs150_length/2-6.5,rs150_height/2-9]) rotate([0,90,0]) cylinder(d=3.5, h=rs150_height, center=true);
        translate([-rs150_width/2, rs150_length/2-190-6.5,rs150_height/2-9.5]) rotate([0,90,0]) cylinder(d=3, h=rs150_height, center=true);
    }
    translate([8, rs150_length/2-5, -5]) cube([70, 10, 15], center=true);
}

module rs_case() { 
    difference() {
        cube([case_width+case_thickness*2+extra, case_length+case_thickness+extra, case_height+case_thickness+extra], center=true);
            translate([0,case_thickness,case_thickness/2]) cube([case_width+extra, case_length+extra, case_height+extra], center=true);
            translate([case_width/2-5, 20, -case_height/2+case_thickness/2]) cube([10, 90, case_height+extra]);
            translate([-case_width/2-5, -5, -case_height/2+case_thickness/2]) cube([10, 90, case_height+extra]);
            // 230V AC power connector
            translate([-10, -case_length/2, 0]) cube([47.5, 10, 28], center=true);
            // DC connector
            translate([28, -case_length/2, 0]) intersection() { 
                rotate([90,0,0]) cylinder(d=12, h=10, center=true);
                //cube([11,11,10], center=true);
            }

            // rs-75 buttom holes
            translate([-rs75_width/2+31+33,58,-case_height/2]) cylinder(d=3.5, h=rs75_height, center=true);
            translate([-rs75_width/2+31,58,-case_height/2]) cylinder(d=3.5, h=rs75_height, center=true);
            translate([-rs75_width/2+7+85.5, -15.5,-case_height/2]) cylinder(d=3.5, h=rs75_height, center=true);
            translate([-rs75_width/2+4.5, -15.5,-case_height/2]) cylinder(d=3.5, h=rs75_height, center=true);
       
            // rs-150 buttom holes
            translate([rs150_width/2-9, 4.5+37.5,-case_height/2]) cylinder(d=3.5, h=rs150_height, center=true);
            translate([rs150_width/2-9-80, 4.5+37.5,-case_height/2]) cylinder(d=3.5, h=rs150_height, center=true);

            // rs-75 side holes
            translate([rs75_width/2, 12, case_height/2-18.5+case_thickness/2]) rotate([0,90,0]) cylinder(d=3.5, h=rs75_height, center=true);
            translate([rs75_width/2, -13.5,rs75_height/2-9+case_thickness/2]) rotate([0,90,0]) cylinder(d=3.5, h=rs75_height, center=true);

            // rs-150 side holes 
            translate([rs150_width/2, 2,case_height/2-18+case_thickness/2]) rotate([0,90,0]) cylinder(d=3.5, h=rs150_height, center=true);
        
    }
    // standoffs
    translate([-case_width/2+5, -case_length/2+7, 0]) difference() {
         cube([10.4,10,case_height-1], center=true);
         translate([0,0,case_height/2]) cylinder(d=2, h=10, center=true);
    }
    translate([case_width/2-5, -case_length/2+7, 0]) difference() {
         cube([10.4,10,case_height-1], center=true);
         translate([0,0,case_height/2]) cylinder(d=2, h=10, center=true);
    }
    translate([-case_width/2+5, -case_length/2+7+36, 0]) difference() {
         cube([10.4,10,case_height-1], center=true);
         translate([0,0,case_height/2]) cylinder(d=2, h=10, center=true);
    }
    translate([case_width/2-5, -case_length/2+7+36, 0]) difference() {
         cube([10.4,10,case_height-1], center=true);
         translate([0,0,case_height/2]) cylinder(d=2, h=10, center=true);
    }
    
}

module rs_case_top() { 
    difference() {
        cube([case_width, 60, case_thickness], center=true);
        translate([case_width/2-5, 60/2-5, 0]) cylinder(d=3.5, h=10, center=true);
        translate([-case_width/2+5, 60/2-5, 0]) cylinder(d=3.5, h=10, center=true);
        translate([-case_width/2+5, 60/2-5-38, 0]) cylinder(d=3.5, h=10, center=true);
        translate([case_width/2-5, 60/2-5-38, 0]) cylinder(d=3.5, h=10, center=true);
    } 
}
rs_case_top();    
!rs_case();
//rs75();
//translate([0,62.5+case_thickness,case_thickness/2]) rotate([0,0,180]) #rs75();
//translate([0,97.5+case_thickness,case_thickness/2]) rotate([0,0,180]) #rs150();
//#rs150();
translate([0,20,0])rs_case();

//translate([0,-20,case_height/2+3]) rotate([0,0,180]) rs_case_top();