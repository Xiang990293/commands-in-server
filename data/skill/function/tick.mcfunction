#創造模式力量效果
execute if score world so_opic matches 1 if entity @a[gamemode=!creative] run effect clear @a[gamemode=!creative] strength

#冷卻條
##天痕
###技能一的冷卻條狀態
execute if score sky_scar sky_scar_skill_1_cooldown matches 0 run bossbar set minecraft:sky_scar_skill_1_cooldown visible false
execute if score world so_sss1 matches 0 run bossbar set minecraft:sky_scar_skill_1_cooldown visible false
execute if score world so_sss1 matches 1 if score sky_scar sky_scar_skill_1_cooldown matches 1.. run bossbar set minecraft:sky_scar_skill_1_cooldown visible true
execute store result bossbar minecraft:sky_scar_skill_1_cooldown value run scoreboard players get sky_scar sky_scar_skill_1_cooldown
###必殺技的冷卻條狀態
execute if score sky_scar sky_scar_nirvana_cooldown matches 0 run bossbar set minecraft:sky_scar_nirvana_cooldown visible false
execute if score world so_ssn matches 0 run bossbar set minecraft:sky_scar_nirvana_cooldown visible false
execute if score world so_ssn matches 1 if score sky_scar sky_scar_nirvana_cooldown matches 1.. run bossbar set minecraft:sky_scar_nirvana_cooldown visible true
execute store result bossbar minecraft:sky_scar_nirvana_cooldown value run scoreboard players get sky_scar sky_scar_nirvana_cooldown
##張博
###必殺技的冷卻條狀態
execute if score FzMY fzmy_nirvana_cooldown matches 0 run bossbar set minecraft:fzmy_nirvana_cooldown visible false
execute if score world so_fn matches 0 run bossbar set minecraft:fzmy_nirvana_cooldown visible false
execute if score world so_fn matches 1 if score FzMY fzmy_nirvana_cooldown matches 1.. run bossbar set minecraft:fzmy_nirvana_cooldown visible true
execute store result bossbar minecraft:fzmy_nirvana_cooldown value run scoreboard players get FzMY fzmy_nirvana_cooldown
##越風
###必殺技的冷卻條狀態
execute if score Xiang990293 xiang990293_nirvana_cooldown matches 0 run bossbar set minecraft:xiang990293_nirvana_cooldown visible false
execute if score world so_xn matches 0 run bossbar set minecraft:xiang990293_nirvana_cooldown visible false
execute if score world so_xn matches 1 if score Xiang990293 xiang990293_nirvana_cooldown matches 1.. run bossbar set minecraft:xiang990293_nirvana_cooldown visible true
execute store result bossbar minecraft:xiang990293_nirvana_cooldown value run scoreboard players get Xiang990293 xiang990293_nirvana_cooldown
##家緯
###必殺技的冷卻條狀態
execute if score Xiang990293 xiang990293_nirvana_cooldown matches 0 run bossbar set minecraft:xiang990293_nirvana_cooldown visible false
execute if score world so_xn matches 0 run bossbar set minecraft:xiang990293_nirvana_cooldown visible false
execute if score world so_xn matches 1 if score Xiang990293 xiang990293_nirvana_cooldown matches 1.. run bossbar set minecraft:xiang990293_nirvana_cooldown visible true
execute store result bossbar minecraft:xiang990293_nirvana_cooldown value run scoreboard players get Xiang990293 xiang990293_nirvana_cooldown

#張博必殺技每日剩餘使用次數狀態(早上六點重製)
#execute store result bossbar minecraft:fzmy_nirvana_day_use value run scoreboard players get FzMY Fndu
#execute if score daytimeFzMY daytime matches 0..20 run scoreboard players set FzMY Fndu 5

#現在幾點
#execute store result score daytimeFzMY daytime run time query daytime
##天痕力量增強標籤撤銷
execute if score sky_scar sky_scar_skill_1_cooldown matches 1..40 run attribute sky_scar minecraft:attack_damage modifier remove 1-1-1-1-2

#冷卻時間
##天痕技能一
execute if score world so_sss1 matches 1 if score sky_scar sky_scar_skill_1_cooldown matches 1.. run scoreboard players remove sky_scar sky_scar_skill_1_cooldown 1
##天痕必殺技
execute if score world so_ssn matches 1 if score sky_scar sky_scar_nirvana_cooldown matches 1.. run scoreboard players remove sky_scar sky_scar_nirvana_cooldown 1
##越風必殺技
execute if score world so_xn matches 1 if score Xiang990293 xiang990293_nirvana_cooldown matches 1.. run scoreboard players remove Xiang990293 xiang990293_nirvana_cooldown 1
##張博必殺技
execute if score world so_fn matches 1 if score FzMY fzmy_nirvana_cooldown matches 1.. run scoreboard players remove FzMY fzmy_nirvana_cooldown 1

#偵測執行-觸發條件trigger
# ##天痕技能一
# execute if entity sky_scar if score sky_scar sky_scar_skill_1_cooldown matches ..0 at sky_scar as @e[type=item,distance=..2] if predicate skill:sky_scar_nirvana_trigger_item_check run function skill:sky_scar_skill_1/trigger
# ##天痕必殺技
# execute if entity sky_scar if score sky_scar sky_scar_nirvana_cooldown matches ..0 at sky_scar as @e[type=item,distance=..2] if predicate skill:sky_scar_skill_1_trigger_item_check run function skill:sky_scar_nirvana/trigger
# ##張博必殺技
# execute if entity FzMY if score FzMY fzmy_nirvana_cooldown matches ..0 at FzMY as @e[type=item,distance=..2] if predicate skill:fzmy_nirvana_trigger_item_check run function skill:fzmy_nirvana/fzmy_nirvana_trigger
# ##翔越風必殺技
# execute if entity Xiang990293 if score Xiang990293 xiang990293_nirvana_cooldown matches ..0 at Xiang990293 as @e[type=item,distance=..2] if predicate skill:xiang990293_nirvana_trigger_item_check run function skill:xiang990293_nirvana/trigger

#觸發條件恢復
##天痕技能一--岩漿球
execute as sky_scar if score @s sky_scar_skill_1_cooldown matches 20 run function skill:give_item/sky_scar_skill_1_trigger_item
##天痕必殺技--史萊姆球
execute as sky_scar if score @s sky_scar_nirvana_cooldown matches 20 run function skill:give_item/sky_scar_nirvana_trigger_item
##張博必殺技--鐵錠
execute as FzMY if score @s fzmy_nirvana_cooldown matches 20 run function skill:give_item/fzmy_nirvana_trigger_item
##翔越風必殺技--
execute as Xiang990293 if score @s xiang990293_nirvana_cooldown matches 20 run function skill:give_item/xiang990293_nirvana_trigger_item
##家緯必殺技--
execute as max_chen504 if score @s max_chen504_nirvana_cooldown matches 20 run function skill:give_item/max_chen504_nirvana_trigger_item