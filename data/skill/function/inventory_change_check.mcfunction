advancement revoke @s only skill:inventory_change_check
execute at Xiang990293 as @n[type=item] if predicate skill:xiang990293_nirvana_trigger_item_check run function skill:cooldown_check_macro with entity @s Item.components."minecraft:custom_data"
execute at sky_scar as @n[type=item] if predicate skill:sky_scar_nirvana_trigger_item_check run function skill:cooldown_check_macro with entity @s Item.components."minecraft:custom_data"
execute at sky_scar as @n[type=item] if predicate skill:sky_scar_skill_1_trigger_item_check run function skill:cooldown_check_macro with entity @s Item.components."minecraft:custom_data"
execute at max_chen504 as @n[type=item] if predicate skill:max_chen504_nirvana_trigger_item_check run function skill:cooldown_check_macro with entity @s Item.components."minecraft:custom_data"
execute at FzMY as @n[type=item] if predicate skill:fzmy_nirvana_trigger_item_check run function skill:cooldown_check_macro with entity @s Item.components."minecraft:custom_data"