load pt1.pdb
load pt2.pdb
# hide the initially loaded representation
hide all;
# set background color to white
bg_color white;

select tt, ( resi 1-535 ) & ( name c+n+ca+h+o )
#cartoon tube, tt
#cartoon_tube_radius,0.8
cartoon tube, tt
set ribbon_smooth, 1

select react_center, (resn ldp )
show sticks, react_center
set_bond stick_radius, 0.2, react_center
show spheres, react_center
set sphere_scale, 0.25, react_center
orient react_center
color cyan, react_center & ( element c )

select nearala, ( react_center around 5 ) & ( ! resn wat )
select nearala2, ( br. nearala ) & ( ! resn wat )
show surf, nearala2
set transparency=0.5

select nearala3, ( react_center around 3 ) & ( ! name c+h+n+ca )
select nearala4, ( br. nearala3 ) & ( ! name c+h+n+ca )
show sticks, nearala4
set_bond stick_radius, 0.2, nearala4

set antialias, 2
unset ray_shadows
