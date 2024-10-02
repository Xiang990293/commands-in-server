tag @s add moving_door_right
execute as @s at @s run setblock ~ ~ ~ air
tp @s ~ ~ ~-.95
tag @s remove door_closed
playsound minecraft:block.barrel.open block @a ~ ~ ~
schedule function decoration:right_door/stay_right_door 1s replace
return 1
