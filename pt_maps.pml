load 3t74.pdb
load tip3p.wat.pdb
hide all
select hot, ( resi 286 ) & ( resn ala )
select nearala, ( hot around 5 ) & ( ! resn hoh )
select nearala2, ( br. nearala ) & ( ! resn hoh )
show surf, nearala2
show surf, hot
show sticks, hot
set transparency, 0.5
set surface_color, lightblue

load 3t74_FoFc.ccp4, ele_map
isomesh msh1,ele_map,1.0,hot,carve=5.0
color grey, mesh1

select hot_wat, hot around 5 & resn hoh
show sticks, hot_Wat
set sphere_scale,  0.2, hot_wat
origin hot
center hot

set ray_shadows, off
