tag @s add moving_door_right
tp @s ~ ~ ~.95
execute as @s at @s run setblock ~ ~ ~ glass_pane
tag @s add door_closed
playsound minecraft:block.barrel.open block @a ~ ~ ~
playsound minecraft:block.barrel.close block @a ~ ~ ~ 1 0
schedule function decoration:right_door/stay_right_door 1s replace
return 0