item replace entity @p weapon.mainhand from entity @n[type=item_display,tag=mission_application_form] container.0
data modify entity @n[type=item_display,tag=mission_application_form] item set value {id:"minecraft:glass",count:1b}
data modify entity @n[type=item_display,tag=mission_application_form] data.hasItem set value 0b
data modify entity @n[type=item_display,tag=rewards_slot] data.hasItem set value 0b
data remove entity @n[type=interaction,tag=rewards_slot] data
# title @p actionbar {"nbt":"item","entity":"@n[type=item_display,tag=rewards_slot]"}
execute unless data entity @n[type=item_display,tag=rewards_slot] item{count:1,id:"minecraft:glass"} run function mission_wall:toggle_rewards_slot_state_if_else/pop_item with entity @n[type=item_display,tag=rewards_slot]
data modify entity @n[type=item_display,tag=rewards_slot] item set value {count:1,id:"minecraft:glass"}
data modify storage mission_wall:request xp set value 0
data modify storage mission_wall:request xp_level set value 0
data modify storage mission_wall:request item set value {action:"show_item",id:"minecraft:glass",count:1b}
data modify storage mission_wall:request no_reward set value ""
data remove storage mission_wall:request announcer