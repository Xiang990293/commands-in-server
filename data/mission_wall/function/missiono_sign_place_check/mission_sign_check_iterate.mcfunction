execute if block ~ ~ ~ stone_button run function mission_wall:mission_sign_place_check/mission_sign_check_end
# particle end_rod ~ ~ ~ 0.0 0.0 0.0 0 1
execute unless block ~ ~ ~ stone_button if entity @s[distance=..7] positioned ^ ^ ^0.3 run function mission_wall:mission_sign_place_check/mission_sign_check_iterate