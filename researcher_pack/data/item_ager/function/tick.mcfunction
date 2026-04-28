execute unless data entity Xiang990293 SelectedItem{id:"minecraft:clock"} run return run execute as @e[type=item,tag=show_item_age] run function item_ager:unshow_all_item_age
execute as @e[type=item,tag=!show_item_age] run function item_ager:show_all_item_age
execute as @e[type=item,tag=show_item_age] at @s if entity @p[distance=..10] run data modify entity @s CustomName set value {"text":"","color":"white"}
execute as @e[type=item,tag=show_item_age] at @s if entity @p[distance=..10] run data modify entity @s CustomName.text set string entity @n[type=item] Age
execute as @e[type=item,tag=show_item_age] at @s if entity @p[distance=..10] store result score @s item_timer run data get entity @s Age
execute as @e[type=item,tag=show_item_age] at @s if entity @p[distance=..10] if score @s item_timer matches 0.. run data modify entity @s CustomName.color set value green
execute as @e[type=item,tag=show_item_age] at @s if entity @p[distance=..10] if score @s item_timer matches 2500.. run data modify entity @s CustomName.color set value gold
execute as @e[type=item,tag=show_item_age] at @s if entity @p[distance=..10] if score @s item_timer matches 5000.. run data modify entity @s CustomName.color set value red