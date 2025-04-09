scoreboard players set @p is_found 1
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.05 25
particle minecraft:dust{scale:2,color:[0.816d,0d,1d]} ~ ~ ~ 0.5 0.5 0.5 5 20
playsound minecraft:block.note_block.bit block @p ~ ~ ~ 1

execute as @s[nbt={Invisible:0b}] run tag @s add invisi
execute as @s[nbt={Invisible:0b}] run title @a[distance=..4] actionbar {"text":"成功將目標隱形"}
execute as @s[nbt={Invisible:1b}] run tag @s add visi
execute as @s[nbt={Invisible:1b}] run title @a[distance=..4] actionbar {"text":"成功將目標顯形"}

execute as @s[tag=invisi,nbt={Invisible:0b}] run data merge entity @s {Invisible:1b}
execute as @s[tag=invisi,nbt={Invisible:1b}] run tag @s remove invisi
execute as @s[tag=visi,nbt={Invisible:1b}] run data merge entity @s {Invisible:0b}
execute as @s[tag=visi,nbt={Invisible:0b}] run tag @s remove visi