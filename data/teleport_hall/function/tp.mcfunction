execute as @a[tag=readytotp] at @e[tag=maintphall,type=armor_stand] run spreadplayers ~ ~ 2 2 under 70 false @s
execute as @a[tag=readytotp] at @e[tag=maintphall,type=armor_stand] run particle dragon_breath ~ ~1 ~ 1.3 1 1.3 0.001 20000 force
execute as @a[tag=readytotp] at @s run particle dragon_breath ~ ~1 ~ 0.2 0.4 0.2 0.001 2000 force
tag @a remove readytotp