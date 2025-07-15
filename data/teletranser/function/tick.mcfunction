execute as @e[type=item] at @s if block ~ ~-1 ~ dropper run tag @s add item_absorbing
execute as @e[tag=item_absorbing] at @s run data modify block ~ ~-1 ~ Items append from entity @s Item
kill @e[tag=item_absorbing]