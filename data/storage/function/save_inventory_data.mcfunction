execute as @e[type=marker,x=-71884,y=32,z=-72218,dx=135,dy=17,dz=135] run data modify entity @s data.x set from entity @s Pos[0]
execute as @e[type=marker,x=-71884,y=32,z=-72218,dx=135,dy=17,dz=135] run data modify entity @s data.z set from entity @s Pos[2]
data modify storage storage:inventory_data Items set value []
execute as @e[type=marker,x=-71884,y=32,z=-72218,dx=135,dy=17,dz=135] run data modify storage storage:inventory_data Items append from entity @s data
