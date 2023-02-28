# ---------- 基礎設定 ----------
gamerule commandBlockOutput false
# ---------- 計分板板 ----------
##========== 基本動作 ==========
scoreboard objectives add s1 minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add s2 minecraft.custom:minecraft.jump
scoreboard objectives add s3 minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add s4 minecraft.custom:minecraft.walk_one_cm
##========== 交通公具 ==========
scoreboard objectives add t1 minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add t2 minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add t3 minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add t4 minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add t5 minecraft.custom:minecraft.pig_one_cm
##========== 水中游走 ==========
scoreboard objectives add w1 minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add w2 minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add w3 minecraft.custom:minecraft.walk_under_water_one_cm
##========== 特殊動作 ==========
scoreboard objectives add m1 minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add m2 minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add m3 minecraft.custom:minecraft.fly_one_cm
##========== 時間計算 ==========
scoreboard objectives add afktimer dummy
# ---------- 給予指令 ----------
#give @s minecraft:repeating_command_block{BlockEntityTag:{Command:"function afk:loop",auto:1b},display:{Name:"{\"text\":\"偵測系統\"}",Lore:["放下以運行系統","建議放在重生區塊"]}}
# ---------- 初始分數 ----------
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s afktimer 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s s1 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s s2 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s s3 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s s4 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s t1 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s t2 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s t3 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s t4 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s t5 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s w1 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s w2 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s w3 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s m1 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s m2 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s m3 0
# ---------- 完成通知 ----------
#tellraw @a [{"text":"已完成 "},{"text":"掛網偵測器 ","color":"yellow"},{"text":"的設定","color":"white"}]