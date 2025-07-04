data modify entity @s item set from entity @p SelectedItem
item replace entity @p weapon.mainhand with air
execute if data entity @s item.components."minecraft:custom_data"{reward_type:"xp"} run dialog show @p mission_wall:xp_amount_setting
execute if data entity @s item.components."minecraft:custom_data"{reward_type:"xp_level"} run dialog show @p mission_wall:xp_level_amount_setting
data modify entity @s data.hasItem set value 1b
data modify storage mission_wall:request title set from entity @s item.components."minecraft:custom_data".title
data modify storage mission_wall:request description set from entity @s item.components."minecraft:custom_data".description
data modify storage mission_wall:request reward_type set from entity @s item.components."minecraft:custom_data".reward_type
data modify storage mission_wall:request announcer set from entity @p UUID