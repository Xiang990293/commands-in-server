execute as @a if score @s blackstonecount matches 1 run advancement grant @s only new_recipe:new_recipe/cook_a_blackstone
execute as @a if score @s blackstonecount matches 1.. run scoreboard players remove @s blackstonecount 1
execute as @a if score @s endstonecount matches 1 run advancement grant @s only new_recipe:new_recipe/cook_a_end_stone
execute as @a if score @s endstonecount matches 1.. run scoreboard players remove @s endstonecount 1
execute as @a if score @s cobstonecount matches 1 run advancement grant @s only new_recipe:new_recipe/stonecut_a_stone
execute as @a if score @s cobstonecount matches 1.. run scoreboard players remove @s cobstonecount 1
execute as @a if score @s cobdeslacount matches 1 run advancement grant @s only new_recipe:new_recipe/stonecut_a_deepslate
execute as @a if score @s cobdeslacount matches 1.. run scoreboard players remove @s cobdeslacount 1