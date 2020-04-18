//
// ktRack1
//
//


gap1 = 0.001;
gap2 = 0.002;

panel_thick = 2;

X = 58;
Y = 19.5;


   
difference()
{
    union()
    {
        translate([-panel_thick, -panel_thick, 0]) cube([X+panel_thick*2, 7+panel_thick, Y+panel_thick]);
        translate([5, -5-panel_thick, 0]) cube([10, 5, panel_thick]);
        translate([5+10/2, -5-panel_thick, 0]) cylinder(  panel_thick, d=10, $fn=100);
        translate([X-5-10, -5-panel_thick, 0]) cube([10, 5, panel_thick]);
        translate([X-5-10/2, -5-panel_thick, 0]) cylinder(  panel_thick, d=10, $fn=100);
    }
    cube([X, 100, Y]);
    translate([5+10/2, -5-panel_thick, 0-gap1]) cylinder(  panel_thick+gap2, d1=5, d2=7.5, $fn=100);
    translate([X-5-10/2, -5-panel_thick, 0-gap1]) cylinder(  panel_thick+gap2, d1=5, d2=7.5, $fn=100);
}


