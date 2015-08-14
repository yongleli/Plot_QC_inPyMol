load TS_last.imaged.pdb
# hide the initially loaded representation
hide all;
# set background color to white
bg_color white;


select react_center, (resi 171 & name ce+nz+hz2+hz3+cd) | (resi 179 & name c21+c22+c23+s1+o17+c17+c18+c19+c20+n7+h27+o16)
show sticks, react_center
set_bond stick_radius, 0.2, react_center
orient react_center

select background_mol, (resi 29+37+77+79+7430+3659+1435+568 & name o+h1+h2+ca+c+o+n+h)
show sticks, background_mol

### The sidechain of the Y84
select background_mol_pt2, resi 37 & name cb+ce1+ce2+cz+oh+hh+cd1+cd2+cg
show sticks, background_mol_pt2

select qwt, resn qwt

show spheres, qwt
show sticks, qwt
set_bond stick_radius, 0.2, qwt
set sphere_scale, 0.25, qwt
color cyan, element c & react_center
set_bond stick_radius, 0.1, background_mol
set_bond stick_radius, 0.1, background_mol_pt2
set_bond stick_radius, 0.1, resi 37

set dash_width, 6
set dash_gap, 0.2
set dash_radius, 0.05
dist NZ_C, react_center & name nz, react_center & name c22
dist HZ3_O1, react_center & name hz3, qwt & name o1
dist H1_O17, react_center & name o17, qwt & name h1
dist Ow_Hw, qwt & name o1, qwt & name h1
hide labels
set dash_color, lime

unbond name h1, name o1
unbond name h1, name o17
unbond name hz3, name o1

load TS_1435.dx
load TS_3659.dx
load TS_568.dx
load TS_7430.dx
isosurface TS_1435_surf, TS_1435, 1.0
isosurface TS_3659_surf, TS_3659, 1.0
isosurface TS_568_surf,  TS_568,  1.0
isosurface TS_7430_surf, TS_7430, 1.0
set transparency=0.5

### cut below here and paste into script ###
set_view (\
     0.048520111,   -0.997799575,    0.045171306,\
    -0.791031539,   -0.010772933,    0.611682594,\
    -0.609848619,   -0.065411158,   -0.789812684,\
     0.000047875,    0.000060096,  -39.916065216,\
    24.333850861,   28.649097443,   33.699890137,\
    25.277482986,   54.557476044,  -20.000000000 )
### cut above here and paste into script ###
set antialias, 2
unset ray_shadows
