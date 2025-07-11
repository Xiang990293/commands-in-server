execute if block ~ ~ ~ #minecraft:all_signs run function mission_wall:mission_sign_place_check/mission_sign_check_end
# particle end_rod ~ ~ ~
execute unless block ~ ~ ~ #minecraft:all_signs if entity @s[distance=..7] positioned ^ ^ ^0.3 run function mission_wall:mission_sign_place_check/mission_sign_check_iterate