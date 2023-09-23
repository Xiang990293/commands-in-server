scoreboard players set @p is_found 1
# particle minecraft:vibration -9 0 7 20 ~ ~ ~ 1 1 1 0.5 0
# particle minecraft:flame ~ ~ ~ 1 1 1 0.5 0

execute as @s[nbt={Invisible:0b}] run tag @s add invisi
execute as @s[nbt={Invisible:0b}] run title @a[distance=..4] actionbar {"text":"成功將目標隱形"}
execute as @s[nbt={Invisible:1b}] run tag @s add visi
execute as @s[nbt={Invisible:1b}] run title @a[distance=..4] actionbar {"text":"成功將目標顯形"}

execute as @s[tag=invisi,nbt={Invisible:0b}] run data merge entity @s {Invisible:1b}
execute as @s[tag=invisi,nbt={Invisible:1b}] run tag @s remove invisi
execute as @s[tag=visi,nbt={Invisible:1b}] run data merge entity @s {Invisible:0b}
execute as @s[tag=visi,nbt={Invisible:0b}] run tag @s remove visi

# #隱形
# # execute as @e[type=item_frame,tag=invisi---,nbt={Invisible:0b}] run data merge entity @s {Invisible:1b}
# # execute as @e[type=item_frame,tag=invisi---,nbt={Invisible:1b}] run tag @s remove invisi---
# #顯形
# # execute as @e[type=item_frame,tag=visi---,nbt={Invisible:1b}] run data merge entity @s {Invisible:0b}
# # execute as @e[type=item_frame,tag=visi---,nbt={Invisible:0b}] run tag @s remove visi---