
load 3t74_FoFc.ccp4, ele_map
isomesh msh1,ele_map,2.0,resi 286,carve=2.0
color grey, mesh1

load 3t74.pdb
select nearala, resi 286 around 5
select nearala2, br. nearala
show surf, nearala2
set transparency, 0.5
set surface_color, lightblue

load wat.placevent.pdb
select hot_wat, hot around 5 & resn hoh
show sticks, hot_Wat
set sphere_scale,  0.2, hot_wat

