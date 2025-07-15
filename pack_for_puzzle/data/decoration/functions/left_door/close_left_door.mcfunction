tag @s add moving_door_left
execute as @s at @s run setblock ~ ~ ~ glass_pane
tp @s ~ ~ ~-.95
tag @s add door_closed
playsound minecraft:block.barrel.open block @a ~ ~ ~
playsound minecraft:block.barrel.close block @a ~ ~ ~ 1 0
schedule function decoration:left_door/stay_left_door 1s replace
return 0