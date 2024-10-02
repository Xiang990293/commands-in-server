tag @s add moving_door_left
tp @s ~ ~ ~.95
execute as @s at @s run setblock ~ ~ ~ air
tag @s remove door_closed
playsound minecraft:block.barrel.open block @a ~ ~ ~
schedule function decoration:left_door/stay_left_door 1s replace
return 1
