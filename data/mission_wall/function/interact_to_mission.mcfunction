particle end_rod ~ ~ ~
# interact to mission bare hand but sneaking
execute unless data entity @s SelectedItem if predicate mission_wall:is_sneaking run return run function mission_wall:accept_the_mission with block ~ ~ ~ components."minecraft:custom_data"
# interact to mission bare hand
execute unless data entity @s SelectedItem run return run function mission_wall:check_mission with block ~ ~ ~ components."minecraft:custom_data"

# check if the certificate matches
execute store result storage mission_wall:uuid_compare match byte 1 run function mission_wall:uuid_compare with block ~ ~ ~ components."minecraft:custom_data"
execute if predicate mission_wall:is_holding_accepter_certificate if data storage mission_wall:uuid_compare {match:0b} run return run title @s actionbar "此證明與任務不合"
execute if predicate mission_wall:is_holding_announcer_certificate if data storage mission_wall:uuid_compare {match:0b} run return run title @s actionbar "此證明與任務不合"

# interact to mission holding mission certificate but sneaking (impossible, except sneaked by a slab without holding shift, so use advancement mission_wall:interact_to_mission_sign_with_item instead)
# execute if predicate mission_wall:is_holding_accepter_certificate if predicate mission_wall:is_sneaking run return run function mission_wall:mission_cancel
# interact to mission holding mission certificate
execute if predicate mission_wall:is_holding_accepter_certificate run return run function mission_wall:mission_status_change
# interact to mission holding announcer certificate
execute if predicate mission_wall:is_holding_announcer_certificate run return run function mission_wall:check_mission_completed with block ~ ~ ~ components."minecraft:custom_data"
title @s actionbar "請使用空手點擊"
