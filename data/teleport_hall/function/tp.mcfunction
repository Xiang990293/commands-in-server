execute as @a[tag=readytotp] at @e[tag=maintphall,type=marker] run particle dragon_breath ~ ~1 ~ 2 1 2 0.001 500 force
execute at @a[tag=readytotp] as @e[distance=..12] store result entity @s data.is_leasher_matching int 1 run function teleport_hall:uuid_compare with entity @s leash
execute at @a[tag=readytotp] as @e[distance=..12] if data entity @s data{is_leasher_matching:1} run tag @s add readytotp
execute as @a[tag=readytotp] at @e[tag=maintphall,type=marker] run spreadplayers ~ ~ 1 2 under 70 false @e[tag=readytotp]
execute as @a[tag=readytotp] at @e[tag=maintphall,type=marker] run playsound entity.player.teleport
execute as @a[tag=readytotp] at @s run particle dragon_breath ~ ~1 ~ 0.2 0.4 0.2 0.001 500 force
execute as @a[tag=readytotp] run advancement revoke @s only storage:enter_storage
gamemode adventure @a[tag=readytotp,gamemode=survival]
tag @e remove readytotp