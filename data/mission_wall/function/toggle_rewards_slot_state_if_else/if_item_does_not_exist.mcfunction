data modify entity @s item set from entity @p SelectedItem
item replace entity @p weapon.mainhand with air
data modify entity @s data.hasItem set value 1b
data modify storage mission_wall:request item set from entity @s item
data modify storage mission_wall:request item.action set value "show_item"
data modify entity @n[type=interaction,tag=rewards_slot] data.accept set value true