# interact to mission holding mission certificate
execute if predicate mission_wall:is_holding_mission_certificate run return -1
# interact to mission holding announcer certificate
execute if predicate mission_wall:is_holding_announcer_certificate run return -1
# interact to mission bare hand but sneaking
execute if predicate mission_wall:is_sneaking run return -1
# interact to mission bare hand
function mission_wall:check_mission with block ~ ~ ~ components."minecraft:custom_data"