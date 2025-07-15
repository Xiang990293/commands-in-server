execute store result storage mission_wall:uuid_compare match byte 1 run function mission_wall:uuid_compare with block ~ ~ ~ components."minecraft:custom_data"
execute if data storage mission_wall:uuid_compare {match:0b} run return run title @s actionbar "此證明與任務不合"
execute if predicate mission_wall:is_holding_accepter_certificate run return run function mission_wall:mission_cancel
execute if predicate mission_wall:is_holding_announcer_certificate run return run function mission_wall:mission_completed_change with block ~ ~ ~ components."minecraft:custom_data"
data modify block ~ ~ ~ components.'minecraft:custom_data' set from entity @s SelectedItem.components."minecraft:custom_data"
data modify block ~ ~ ~ components.'minecraft:can_place_on' set from entity @s SelectedItem.components."minecraft:can_place_on"
data modify block ~ ~ ~ front_text set from entity @s SelectedItem.components."minecraft:block_entity_data".front_text
tp @s 230 64 -159