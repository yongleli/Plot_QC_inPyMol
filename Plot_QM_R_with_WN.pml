load R_presentative.pdb
# hide the initially loaded representation
hide all;
# set background color to white
bg_color white;


select react_center, (resi 171 & name ce+nz+hz2+hz3+cd) | (resi 179 & name c21+c22+c23+s1+o17+c17+c18+c19+c20+n7+h27+o16)
show sticks, react_center
set_bond stick_radius, 0.2, react_center
orient react_center

select background_mol, (resi 29+37+77+79+7430+3659+5288+568 & name o+h1+h2+ca+c+o+n+h)
show sticks, background_mol

### The sidechain of the Y84
select background_mol_pt2, resi 37 & name cb+ce1+ce2+cz+oh+hh+cd1+cd2+cg
show sticks, background_mol_pt2

select qwt, resn qwt

show spheres, qwt
show sticks, qwt
set_bond stick_radius, 0.2, qwt
set sphere_scale, 0.25, qwt
color cyan, name c21+c22+c23+ce+cd & react_center
set_bond stick_radius, 0.1, background_mol
set_bond stick_radius, 0.1, background_mol_pt2

### Load the isodensity surfaces.
### These surfaces are from VMD.
load R_7430.dx
load R_3659.dx
load R_5288.dx
load R_568.dx
isosurface R_7430_surf, R_7430, 1.0
isosurface R_3659_surf, R_3659, 1.0
isosurface R_5288_surf, R_5288, 1.0
isosurface R_568_surf,  R_568,  1.0
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
