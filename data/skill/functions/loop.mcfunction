#創造模式力量效果
execute if score world so_opic matches 1 if entity @a[gamemode=!creative] run effect clear @a[gamemode=!creative] strength

#冷卻條
##天痕
###技能一的冷卻條狀態
execute if score sky_scar sss1c matches 0 run bossbar set minecraft:sky_scar_skill_1_cooldown visible false
execute if score world so_sss1 matches 0 run bossbar set minecraft:sky_scar_skill_1_cooldown visible false
execute if score world so_sss1 matches 1 if score sky_scar sss1c matches 1.. run bossbar set minecraft:sky_scar_skill_1_cooldown visible true
execute store result bossbar minecraft:sky_scar_skill_1_cooldown value run scoreboard players get sky_scar sss1c
###必殺技的冷卻條狀態
execute if score sky_scar ssnc matches 0 run bossbar set minecraft:sky_scar_nirvana_cooldown visible false
execute if score world so_ssn matches 0 run bossbar set minecraft:sky_scar_nirvana_cooldown visible false
execute if score world so_ssn matches 1 if score sky_scar ssnc matches 1.. run bossbar set minecraft:sky_scar_nirvana_cooldown visible true
execute store result bossbar minecraft:sky_scar_nirvana_cooldown value run scoreboard players get sky_scar ssnc
##張博
###必殺技的冷卻條狀態
execute if score FzMY Fnc matches 0 run bossbar set minecraft:fzmy_nirvana_cooldown visible false
execute if score world so_fn matches 0 run bossbar set minecraft:fzmy_nirvana_cooldown visible false
execute if score world so_fn matches 1 if score FzMY Fnc matches 1.. run bossbar set minecraft:fzmy_nirvana_cooldown visible true
execute store result bossbar minecraft:fzmy_nirvana_cooldown value run scoreboard players get FzMY Fnc
##越風
###必殺技的冷卻條狀態
execute if score Xiang990293 Xnc matches 0 run bossbar set minecraft:xiang990293_nirvana_cooldown visible false
execute if score world so_xn matches 0 run bossbar set minecraft:xiang990293_nirvana_cooldown visible false
execute if score world so_xn matches 1 if score Xiang990293 Xnc matches 1.. run bossbar set minecraft:xiang990293_nirvana_cooldown visible true
execute store result bossbar minecraft:xiang990293_nirvana_cooldown value run scoreboard players get Xiang990293 Xnc
###傳送的冷卻條狀態
execute if score world tpcooldown matches 0 run bossbar set minecraft:tp_cooldown visible false
execute if score world so_th matches 0 run bossbar set minecraft:tp_cooldown visible false
execute if score world so_th matches 1 if score world tpcooldown matches 1.. run bossbar set minecraft:tp_cooldown visible true
execute store result bossbar minecraft:tp_cooldown value run scoreboard players get world tpcooldown

#張博必殺技每日剩餘使用次數狀態(早上六點重製)
#execute store result bossbar minecraft:fzmy_nirvana_day_use value run scoreboard players get FzMY Fndu
#execute if score daytimeFzMY daytime matches 0..20 run scoreboard players set FzMY Fndu 5

#現在幾點
#execute store result score daytimeFzMY daytime run time query daytime
##天痕力量增強標籤撤銷
execute if score sky_scar sss1c matches 1..40 run attribute sky_scar minecraft:generic.attack_damage modifier remove 1-1-1-1-2

#冷卻時間
##天痕技能一
execute if score world so_sss1 matches 1 if score sky_scar sss1c matches 1.. run scoreboard players remove sky_scar sss1c 1
##天痕必殺技
execute if score world so_ssn matches 1 if score sky_scar ssnc matches 1.. run scoreboard players remove sky_scar ssnc 1
##越風必殺技
execute if score world so_xn matches 1 if score Xiang990293 Xnc matches 1.. run scoreboard players remove Xiang990293 Xnc 1
##張博必殺技
execute if score world so_fn matches 1 if score FzMY Fnc matches 1.. run scoreboard players remove FzMY Fnc 1
##傳送殿堂
###座標：156.0 68.0 -163.0
execute if score world so_th matches 1 if score world tpcooldown matches 1.. run scoreboard players remove world tpcooldown 1


#偵測執行-觸發條件trigger
##天痕技能一
execute as sky_scar at @s if score @s sss1c matches ..0 if entity @e[distance=..2,nbt={Item:{id:"minecraft:magma_cream",Count:1b,tag:{display:{Name:'{"italic":false,"color":"red","text":"加速"}'}}},OnGround:0b}] run function skill:sky_scar_skill_1/sky_scar_skill_1_trigger
##天痕必殺技
execute as sky_scar at @s if score @s ssnc matches ..0 if entity @e[distance=..2,nbt={Item:{id:"minecraft:slime_ball",Count:1b,tag:{display:{Lore:['{"italic":false,"text":"使用後會在除了你以外最近的5位玩家，會在其位置召喚一隻高壓苦力怕"}'],Name:'{"italic":false,"color":"blue","text":"雷神"}'},Enchantments:[{lvl:1s,id:"minecraft:infinity"},{lvl:1s,id:"minecraft:mending"}]}}}] run function skill:sky_scar_nirvana/sky_scar_nirvana_trigger
##張博必殺技
execute as FzMY at @s if score @s Fnc matches ..0 if entity @e[distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Lore:['{"italic":false,"text":"使用後會獲得10秒抗性V，並消除所有效果，冷卻時間80秒"}'],Name:'{"italic":false,"color":"red","text":"惡食"}'},Enchantments:[{lvl:1s,id:"minecraft:infinity"},{lvl:1s,id:"minecraft:mending"}]}}}] run function skill:fzmy_nirvana/fzmy_nirvana_trigger
##翔越風必殺技
execute as Xiang990293 at @s if score Xiang990293 Xnc matches ..0 if entity @e[distance=..2,nbt={Item:{id:"minecraft:gray_glazed_terracotta",Count:1b,tag:{display:{Lore:['{"italic":false,"text":"使用後會召喚 喚魔者尖牙，自身獲得 回復II 及 緩速I 效果，冷卻30秒"}'],Name:'{"italic":false,"color":"red","text":"魔牙召喚"}'},Enchantments:[{lvl:1s,id:"minecraft:infinity"},{lvl:1s,id:"minecraft:mending"}]}}}] run function skill:xiang990293_nirvana/xiang990293_nirvana_trigger

#觸發條件恢復
##天痕技能一--岩漿球
execute as sky_scar if score @s sss1c matches 20 run function skill:give_item/sky_scar_skill_1_trigger_item
##天痕必殺技--史萊姆球
execute as sky_scar if score @s ssnc matches 20 run function skill:give_item/sky_scar_nirvana_trigger_item
##張博必殺技--鐵錠
execute as FzMY if score @s Fnc matches 20 run function skill:give_item/fzmy_nirvana_trigger_item
##翔越風必殺技--
execute as Xiang990293 if score @s Xnc matches 20 run function skill:give_item/xiang990293_nirvana_trigger_item

##傳送殿堂觸發條件偵測
###傳送殿堂永久區塊
execute at @e[tag=tphall] run forceload add ~ ~
###傳送殿堂回收紙
execute at @e[type=minecraft:armor_stand,tag=tphall] as @a[distance=13..20] run clear @s paper{display:{Lore:['{"italic":false,"text":"使用後會將站在傳送區域內的所有玩家一併傳送至傳送大廳"}'],Name:'{"italic":false,"color":"aqua","text":"傳送卷軸"}'},Enchantments:[{lvl:1s,id:"minecraft:infinity"},{lvl:1s,id:"minecraft:mending"}]}
###傳送殿堂給紙
execute as @a at @s store result score @s tppaper run clear @s paper{display:{Lore:['{"italic":false,"text":"使用後會將站在傳送區域內的所有玩家一併傳送至傳送大廳"}'],Name:'{"italic":false,"color":"aqua","text":"傳送卷軸"}'},Enchantments:[{lvl:1s,id:"minecraft:infinity"},{lvl:1s,id:"minecraft:mending"}]} 0
execute if score world tpcooldown matches ..30 as @e[type=minecraft:armor_stand,tag=tphall] at @s if entity @a[distance=..13,scores={tppaper=0},sort=nearest,limit=1] run function skill:teleport_hall/detect_inventory
execute if score world tpcooldown matches ..30 as @e[type=minecraft:armor_stand,tag=tphall] at @s if entity @a[distance=..13,scores={tppaper=2..},sort=nearest,limit=1] run clear @a[distance=..13,scores={tppaper=2..},sort=nearest,limit=1] paper{display:{Lore:['{"italic":false,"text":"使用後會將站在傳送區域內的所有玩家一併傳送至傳送大廳"}'],Name:'{"italic":false,"color":"aqua","text":"傳送卷軸"}'},Enchantments:[{lvl:1s,id:"minecraft:infinity"},{lvl:1s,id:"minecraft:mending"}]} 1
execute if score world tpcooldown matches 31.. as @e[type=minecraft:armor_stand,tag=tphall] at @s if entity @a[distance=..13,scores={tppaper=1..},sort=nearest,limit=1] run clear @a[distance=..13,scores={tppaper=1..},sort=nearest,limit=1] paper{display:{Lore:['{"italic":false,"text":"使用後會將站在傳送區域內的所有玩家一併傳送至傳送大廳"}'],Name:'{"italic":false,"color":"aqua","text":"傳送卷軸"}'},Enchantments:[{lvl:1s,id:"minecraft:infinity"},{lvl:1s,id:"minecraft:mending"}]} 1
###傳送範圍內的人給標籤(readytotp)
execute as @e[type=minecraft:armor_stand,tag=tphall] at @s run tag @a[distance=..8] add readytotp
###傳送範圍內的人撤標籤(readytotp)
execute as @e[type=minecraft:armor_stand,tag=tphall] at @s run tag @a[distance=8..13] remove readytotp
###傳送區域丟紙
execute if score world tpcooldown matches 0 at @e[type=minecraft:armor_stand,tag=tphall] as @e[distance=..8,type=item,nbt={Item:{id:"minecraft:paper",tag:{display:{Lore:['{"italic":false,"text":"使用後會將站在傳送區域內的所有玩家一併傳送至傳送大廳"}'],Name:'{"italic":false,"color":"aqua","text":"傳送卷軸"}'},Enchantments:[{lvl:1s,id:"minecraft:infinity"},{lvl:1s,id:"minecraft:mending"}]}}}] run function skill:teleport_hall/teleport_to
###傳送區域外丟紙
execute at @e[type=minecraft:armor_stand,tag=tphall] as @e[distance=8..13,type=item,nbt={Item:{id:"minecraft:paper",tag:{display:{Lore:['{"italic":false,"text":"使用後會將站在傳送區域內的所有玩家一併傳送至傳送大廳"}'],Name:'{"italic":false,"color":"aqua","text":"傳送卷軸"}'},Enchantments:[{lvl:1s,id:"minecraft:infinity"},{lvl:1s,id:"minecraft:mending"}]}}}] run kill @s

###將傳送用盔甲座隱形
execute as @e[tag=maintphall,type=armor_stand] run data merge entity @s {Invisible:1b}
execute as @e[tag=tphall,type=armor_stand] run data merge entity @s {Invisible:1}
###使傳送用盔甲座無敵
execute as @e[tag=maintphall,type=armor_stand] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=tphall,type=armor_stand] run data merge entity @s {Invulnerable:1b}
