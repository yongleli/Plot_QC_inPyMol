load GCN5.TS1.pdb
# hide the initially loaded representation
hide all;
# set background color to white
bg_color white;


select react_center, (resi 171 & name ce+nz+hz2+hz3+cd) | (resi 179 & name c21+c22+c23+s1+o17)
show sticks, react_center
set_bond stick_radius, 0.1, react_center
orient react_center

#select background_mol, (resi 29+37+77+79+7430+3659+5288+568 & name o+h1+h2+ca+c+o+n+h)
#show sticks, background_mol

#select background_mol_pt2, resi 37 & name cb+ce1+ce2+cz+oh+hh+cd1+cd2+cg
#show sticks, background_mol_pt2

select qwt, resn qwt

show spheres, qwt
show sticks, qwt
set_bond stick_radius, 0.2, qwt
set sphere_scale, 0.25, qwt
color cyan, name c21+c22+c23+ce+cd & react_center
#set_bond stick_radius, 0.1, background_mol
#set_bond stick_radius, 0.1, background_mol_pt2

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

###### Don't forget to use Chimera first to image the different pdb files!
######
###### 

### cut below here and paste into script ###
set_view (\
    -0.549086928,   -0.834508061,   -0.045812778,\
    -0.781131804,    0.531915307,   -0.326949328,\
     0.297208250,   -0.143735886,   -0.943929911,\
    -0.000001692,    0.000050030,  -22.928462982,\
    27.186468124,   39.298507690,   35.779945374,\
    -9.400226593,   55.253559113,  -20.000000000 )
### cut above here and paste into script ###

set antialias, 2
unset ray_shadows
