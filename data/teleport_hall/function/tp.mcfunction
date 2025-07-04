execute as @a[tag=readytotp] at @e[tag=maintphall,type=marker] run spreadplayers ~ ~ 2 2 under 70 false @s
execute as @a[tag=readytotp] at @e[tag=maintphall,type=marker] run particle dragon_breath ~ ~1 ~ 2 1 2 0.001 20000 force
execute as @a[tag=readytotp] at @s run particle dragon_breath ~ ~1 ~ 0.2 0.4 0.2 0.001 2000 force
gamemode adventure @a[tag=readytotp,gamemode=survival]
tag @a remove readytotp