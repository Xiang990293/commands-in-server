particle end_rod ~ ~ ~
# interact to mission holding mission certificate but sneaking (impossible, except sneaked by a slab without holding shift, so use advancement mission_wall:interact_to_mission_sign_with_item instead)
# execute if predicate mission_wall:is_holding_accepter_certificate if predicate mission_wall:is_sneaking run return run function mission_wall:mission_cancel
# interact to mission holding mission certificate
execute if predicate mission_wall:is_holding_accepter_certificate run return run function mission_wall:mission_status_change
# interact to mission holding announcer certificate
execute if predicate mission_wall:is_holding_announcer_certificate run return run function mission_wall:check_mission_completed with block ~ ~ ~ components."minecraft:custom_data"
# interact to mission bare hand but sneaking
execute if predicate mission_wall:is_sneaking run return run function mission_wall:accept_the_mission with block ~ ~ ~ components."minecraft:custom_data"
# interact to mission bare hand
function mission_wall:check_mission with block ~ ~ ~ components."minecraft:custom_data"