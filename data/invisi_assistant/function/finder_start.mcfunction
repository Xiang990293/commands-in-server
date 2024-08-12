advancement revoke @s only invisi_assistant:shoot_invisi_gun
scoreboard players reset @s is_found
scoreboard players reset @s found_count
# function invisi_assistant:durability_calculator {"Damage":"1"}
item modify entity @s weapon.mainhand invisi_assistant:set_gun_damage_trans
execute anchored eyes positioned ^ ^ ^ run function invisi_assistant:finder_iterate