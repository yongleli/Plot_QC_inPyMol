load h3coa.R.QMMM-MD.pdb
# hide the initially loaded representation
hide all;
# set background color to white
bg_color white;

select react_center, (resi 8 & name ce+nz+hz2+hz3+cd) | (resi 16 & name c21+c22+c23+s1+o17+c17+c18+c19+c20+n7+h27+o16)
show sticks, react_center
set_bond stick_radius, 0.2, react_center
orient react_center

select qwt, resn qwt

show spheres, qwt
show sticks, qwt
set_bond stick_radius, 0.2, qwt
set sphere_scale, 0.25, qwt
color cyan, name c21+c22+c23+ce+cd+c19+c20+c18+c17 & react_center

### Load the isodensity surfaces.
### These surfaces are from VMD.
load spatial_h3coa_r.dx
isosurface spatial_h3coa_r_surf, spatial_h3coa_r, 1.0
set transparency=0.5

#select nearwat, br. resn wat w. 4 of resi 8 and name nz
select nearwat, resi 198+981+1372+1656
show sticks, nearwat
set_bond stick_radius, 0.1, nearwat

clip atoms, 3, react_center

set_view (\
     0.250017405,    0.948686182,   -0.193604216,\
    -0.747432590,    0.316210657,    0.584257543,\
     0.615497947,   -0.001367759,    0.788137078,\
     0.000007186,   -0.000004206,  -29.636951447,\
    28.322710037,   21.617073059,   18.216968536,\
    25.489011765,   31.361375809,  -20.000000000 )

set antialias, 2
unset ray_shadows
