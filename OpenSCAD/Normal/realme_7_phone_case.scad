include <./src/libraries/obiscad/bcube.scad>

module cylinders(points, diameter, thickness){
    for (p=points){
        translate(p) cylinder(d=diameter, h=thickness, center=true);
    }
}

module plate(points, diameter, thickness, hole_diameter){
    difference(){
        hull() cylinders(points, diameter, thickness);
        bcube([85,40,5],cr=2);
    }
}

module bar(length, width, thickness, hole_diameter){
    plate([[0,0,0], [length,0,0]], width, thickness, hole_diameter);
}


// write name on the phone case
translate([ 0, 0, -1.6 ])
    {
        linear_extrude(0.4)
        {
            text("Mohammad Parcel",size = 10.8,halign = "center",font = "Adlery Pro:style=Swash");
        }

    }

difference() {
    
    // main phone case
    minkowski() {
            bcube([162,75,1.5],cr = 1.6);
            sphere(0.5);
    }
    
        translate([0,1,4]) bcube([162,70,10],cr=1.6);
    
    // phone camera space
    translate([35,24,-3]) {
            linear_extrude(3) {
                    minkowski() {
                        //square([17,34],center = true);
                        square([39,7]);
                        circle(0.4);
                         //resize([6,10]) circle(d=9);
                    }
             }
      }
      
      // phone power button space
      translate([9.4,35,-4]) {
            linear_extrude(5) {
                    minkowski() {
                        //square([17,34],center = true);
                        square([15,3]);
                        square([5,1]);
                         //resize([6,10]) circle(d=9);
                    }
             }
      }
      
      // phone volume button space
      translate([9.4,-38,-4]) {
            linear_extrude(5) {
                    minkowski() {
                        //square([17,34],center = true);
                        square([15,3]);
                        square([5,1.4]);
                         //resize([6,10]) circle(d=9);
                    }
             }
      }
      
      // phone charging port
      translate([-85,-6,-3]) {
          linear_extrude(4) {
                  //square([1,1]);
              minkowski() {
                  square([4,8]);
                  circle(0.4);
              }
                  //circle(d=3);   
          }
      }
      
      // phone earphone port
      translate([-82,-30,-8.3]) {
          linear_extrude(9) {
                  //square([1,1]);
              minkowski() {
                  square([1,1]);
                  square([1,2]);
                  //circle(1);
              }
                  //circle(d=3);   
          }
      }
      
      // phone speaker space
      translate([-85,11.6,-8.5]) {
          linear_extrude(9) {
                  //square([1,1]);
              minkowski() {
                  square([3,10]);
                  square([1,1]);
                  circle(0.4);
              }
                  //circle(d=3);   
          }
      }
    
}

/*
scale([1.2,1,1]) {
    // Car body base

//bcube([85,40,5],cr=2);
    
   // hull() cylinders([[2,2,2], [10,2,2]],10, 3);
    //bcube([85,40,5],cr=2);
    
}
*/

 


//bar(10,20,3,3);
    
    
    //translate([-15,15,0])
     // bcube([20,20,10]);
    // Car body top minkowski
    //translate([5,0,10 - 0.001])
