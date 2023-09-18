#物品展示框隱形
execute as @e[type=item_frame,tag=invisiframe,nbt={Invisible:0b}] run data merge entity @s {Invisible:1b}
execute as @e[type=item_frame,tag=invisiframe,nbt={Invisible:1b}] run tag @s remove invisiframe
#物品展示框顯形
execute as @e[type=item_frame,tag=visiframe,nbt={Invisible:1b}] run data merge entity @s {Invisible:0b}
execute as @e[type=item_frame,tag=visiframe,nbt={Invisible:0b}] run tag @s remove visiframe

#盔甲架隱形
execute as @e[type=armor_stand,tag=invisistand,nbt={Invisible:0b}] run data merge entity @s {Invisible:1b}
execute as @e[type=armor_stand,tag=invisistand,nbt={Invisible:1b}] run tag @s remove invisistand
#盔甲架顯形
execute as @e[type=armor_stand,tag=visistand,nbt={Invisible:1b}] run data merge entity @s {Invisible:0b}
execute as @e[type=armor_stand,tag=visistand,nbt={Invisible:0b}] run tag @s remove visistand

#隱形
# execute as @e[type=item_frame,tag=invisi---,nbt={Invisible:0b}] run data merge entity @s {Invisible:1b}
# execute as @e[type=item_frame,tag=invisi---,nbt={Invisible:1b}] run tag @s remove invisi---
#顯形
# execute as @e[type=item_frame,tag=visi---,nbt={Invisible:1b}] run data merge entity @s {Invisible:0b}
# execute as @e[type=item_frame,tag=visi---,nbt={Invisible:0b}] run tag @s remove visi---