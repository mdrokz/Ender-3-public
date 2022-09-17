include <./src/libraries/obiscad/bcube.scad>

// scale([0.4,0.4,0.4]) {
//  import("name.svg", center = true);
// }
//  rotate(90)

// translate([0,0,-2.4]) rotate([0,0,0]) scale([1.2,0.4,0.8])  resize(newsize=[10,10,4]) import("name.svg", center =
// true);

// scale([1.2,0.4,1.4])  resize(newsize=[10,10,20]) import("name.svg", center = true);
// square([3,9]);
// circle(0.4);
// resize([6,10]) circle(d=9);
/*
translate([ 0, 0, -2.6 ])
    {
        linear_extrude(1)
        {
            text("Mohammad Parcel",size = 2.1,halign = "center",font = "Adlery Pro:style=Swash");
        }

    }
*/

//  scale([1.2,0.4,1.4])  resize(newsize=[20,20,10])

translate([0,0,-2.4]) import("judge.svg", center = true);

difference()
{

    minkowski()
    {
        bcube([ 20, 40, 4 ], cr = 1);


        sphere(0.3);
    }
    
 

    translate([ 0, 0, 5 ]) cube([ 19, 39, 13 ], center = true);

   

    // put svg in middle using translate & rotate
    // translate([ -7, 6, -3 ])
    // {
    //     linear_extrude(1)
    //     {
    //         translate([ 0, 0, -2.4 ]) rotate([ 0, 0, 0 ]) scale([ 1.2, 0.4, 1.4 ]) resize(newsize = [ 10, 10, 20 ])
    //             import("name.svg", center = true);
    //     }
    // }
}