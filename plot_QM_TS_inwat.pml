#load h3coa.R.QMMM-MD.pdb
load h3coa_TS.pdb
# hide the initially loaded representation
hide all;
# set background color to white
bg_color white;

select react_center, (resi 8 & name ce+nz+hz2+hz3+cd) | (resi 16 & name c21+c22+c23+s1+o17)
show sticks, react_center
set_bond stick_radius, 0.2, react_center
orient react_center

select qwt, resn qwt

show spheres, qwt
show sticks, qwt
set_bond stick_radius, 0.2, qwt
set sphere_scale, 0.25, qwt
color cyan, name c21+c22+c23+ce+cd & react_center

### Load the isodensity surfaces.
### These surfaces are from VMD.
load water_within4.dx
isosurface water_within4_surf, water_within4, 1.0
set transparency=0.5

unbond name o17, name h2
set dash_width, 6
set dash_gap, 0.2
set dash_radius, 0.05
dist HZ3_O1, react_center & name hz2, qwt & name o1
dist H1_O17, react_center & name o17, qwt & name h2
dist Ow_Hw, qwt & name o1, qwt & name h2
hide labels
set dash_color, lime

##
## Select the nearby water by residue. w.: within.
##
select nearwat, br. resn wat w. 3 of resi 8 and name nz
show sticks, nearwat
set_bond stick_radius, 0.1, nearwat

clip atoms, 3, react_center

set antialias, 2
unset ray_shadows
