

isomesh msh1,filename,2.0,resi 286,carve=2.0
color grey, mesh1

select nearala, resi 286 around 5
select nearala2, br. nearala
show surf, nearala2
set transparency, 0.5
set surface_color, lightblue

select hot_wat, hot around 5 & resn hoh
show sticks, hot_Wat
set sphere_scale,  0.2, hot_wat

