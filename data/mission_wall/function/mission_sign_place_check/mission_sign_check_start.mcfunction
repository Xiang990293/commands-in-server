advancement revoke @s only mission_wall:mission_sign_place_check
advancement revoke @s only mission_wall:interact_to_mission_sign_with_item
execute if predicate mission_wall:is_holding_accepter_certificate at @s anchored eyes positioned ^ ^ ^ run return run function mission_wall:mission_sign_place_check/mission_sign_check_iterate
execute if predicate mission_wall:is_holding_announcer_certificate at @s anchored eyes positioned ^ ^ ^ run return run function mission_wall:mission_sign_place_check/mission_sign_check_iterate
execute if entity @s[gamemode=!adventure] run return run advancement revoke @s only mission_wall:mission_sign_place_check
execute at @s anchored eyes positioned ^ ^ ^ run function mission_wall:mission_sign_place_check/mission_sign_check_iterate