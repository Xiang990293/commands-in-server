data modify storage skill:option generic set value {}

scoreboard objectives add sky_scar_skill_1_cooldown dummy
execute unless score sky_scar sky_scar_skill_1_cooldown matches 0 run scoreboard players set sky_scar sky_scar_skill_1_cooldown 0
bossbar add sky_scar_skill_1_cooldown {"text":"deja vu加速爆擊 冷卻","color":"blue"}
bossbar set sky_scar_skill_1_cooldown color blue
bossbar set sky_scar_skill_1_cooldown players sky_scar

scoreboard objectives add sky_scar_nirvana_cooldown dummy
execute unless score sky_scar sky_scar_nirvana_cooldown matches 0 run scoreboard players set sky_scar sky_scar_nirvana_cooldown 0
bossbar add sky_scar_nirvana_cooldown {"text":"雷神 冷卻","color":"blue"}
bossbar set sky_scar_nirvana_cooldown color blue
bossbar set sky_scar_nirvana_cooldown players sky_scar

scoreboard objectives add fzmy_nirvana_cooldown dummy
execute unless score FzMY fzmy_nirvana_cooldown matches 0 run scoreboard players set FzMY fzmy_nirvana_cooldown 0
bossbar add fzmy_nirvana_cooldown {"text":"惡食 冷卻","color":"red"}
bossbar set fzmy_nirvana_cooldown color red
bossbar set fzmy_nirvana_cooldown players FzMY

scoreboard objectives add xiang990293_nirvana_cooldown dummy
execute unless score Xiang990293 xiang990293_nirvana_cooldown matches 0 run scoreboard players set Xiang990293 xiang990293_nirvana_cooldown 0
bossbar add xiang990293_nirvana_cooldown {"text":"魔牙召喚 冷卻","color":"red"}
bossbar set xiang990293_nirvana_cooldown color red
bossbar set xiang990293_nirvana_cooldown players Xiang990293

scoreboard objectives add max_chen504_nirvana_cooldown dummy
execute unless score max_chen504 max_chen504_nirvana_cooldown matches 0 run scoreboard players set max_chen504 max_chen504_nirvana_cooldown 0
bossbar add max_chen504_nirvana_cooldown {"text":"奧特炸彈 冷卻","color":"yellow"}
bossbar set max_chen504_nirvana_cooldown color yellow
bossbar set max_chen504_nirvana_cooldown players max_chen504

#傳送殿堂的紙只給一個用
scoreboard objectives add tppaper dummy
execute if score world execute_count matches 1 run scoreboard players set @a tppaper 0
#傳送殿堂的紙只給身上有存放空間的用
scoreboard objectives add inventoryplace dummy
execute if score world execute_count matches 1 run scoreboard players set @a inventoryplace 0

#張博每日必殺使用次數計算用(待使用)
#scoreboard objectives add Fndu dummy
#bossbar add fzmy_nirvana_day_use {"text":"惡食 剩餘使用次數","color":"dark_red"}
#bossbar set fzmy_nirvana_day_use color red
#bossbar set fzmy_nirvana_day_use players FzMY
#bossbar set fzmy_nirvana_day_use max 5
#bossbar set fzmy_nirvana_day_use visible true

#施放次數用(原用於發送信號使用，現用於次數)
scoreboard objectives add Fnu dummy
execute if score world execute_count matches 1 run scoreboard players set FzMY Fnu 0
scoreboard objectives add tpu dummy
execute if score world execute_count matches 1 run scoreboard players set @a tpu 0

#設定用
scoreboard objectives add so_fn dummy
execute if score world execute_count matches 1 run scoreboard players set world so_fn 1
scoreboard objectives add so_opic dummy
execute if score world execute_count matches 1 run scoreboard players set world so_opic 0
scoreboard objectives add so_ssn dummy
execute if score world execute_count matches 1 run scoreboard players set world so_ssn 1
scoreboard objectives add so_sss1 dummy
execute if score world execute_count matches 1 run scoreboard players set world so_sss1 1
scoreboard objectives add so_th dummy
execute if score world execute_count matches 1 run scoreboard players set world so_th 1
scoreboard objectives add so_xn dummy
execute if score world execute_count matches 1 run scoreboard players set world so_xn 1

#防爆用
scoreboard objectives add mobgriefing dummy
execute store result score world mobgriefing run gamerule mobGriefing

#將生命值改回預設值用
scoreboard objectives add health_default dummy