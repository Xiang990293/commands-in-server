advancement revoke @s only invisi_assistant:invisiable_checker
scoreboard players reset @s is_found
scoreboard players reset @s found_count
execute run function invisi_assistant:durability_calculator {"Damage":"1"}
execute anchored eyes positioned ^ ^ ^ run function invisi_assistant:finder_iterate