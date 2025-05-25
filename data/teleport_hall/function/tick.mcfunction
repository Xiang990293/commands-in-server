#冷卻條
bossbar set minecraft:tp_cooldown players @a
execute if score world tpcooldown matches 0 run bossbar set minecraft:tp_cooldown visible false
execute if score world so_th matches 0 run bossbar set minecraft:tp_cooldown visible false
execute if score world so_th matches 1 if score world tpcooldown matches 1.. run bossbar set minecraft:tp_cooldown visible true
execute store result bossbar minecraft:tp_cooldown value run scoreboard players get world tpcooldown

#冷卻時間
##傳送殿堂
###座標：156.0 68.0 -163.0
execute if score world so_th matches 1 if score world tpcooldown matches 1.. run scoreboard players remove world tpcooldown 1

##傳送殿堂觸發條件偵測
###傳送殿堂回收紙
execute at @e[type=minecraft:armor_stand,tag=tphall] as @a[distance=13..20] run clear @s paper[minecraft:lore=['{"italic":false,"text":"使用後會將站在傳送區域內的所有玩家一併傳送至傳送大廳"}'],minecraft:item_name='{"italic":false,"color":"aqua","text":"傳送卷軸"}',minecraft:enchantments={levels:{"minecraft:infinity":1,"minecraft:mending":1}}]
###傳送殿堂給紙
execute as @a at @s store result score @s tppaper run clear @s paper[minecraft:lore=['{"italic":false,"text":"使用後會將站在傳送區域內的所有玩家一併傳送至傳送大廳"}'],minecraft:item_name='{"italic":false,"color":"aqua","text":"傳送卷軸"}',minecraft:enchantments={levels:{"minecraft:infinity":1,"minecraft:mending":1}}] 0
execute if score world tpcooldown matches ..30 as @e[type=minecraft:armor_stand,tag=tphall] at @s if entity @a[distance=..13,scores={tppaper=0}] if predicate teleport_hall:inventory_empty_space_check run function teleport_hall:give_teleport_item
execute if score world tpcooldown matches ..30 as @e[type=minecraft:armor_stand,tag=tphall] at @s if entity @a[distance=..13,scores={tppaper=2..}] run clear @a[distance=..13,scores={tppaper=2..},sort=nearest,limit=1] paper[minecraft:lore=['{"italic":false,"text":"使用後會將站在傳送區域內的所有玩家一併傳送至傳送大廳"}'],minecraft:item_name='{"italic":false,"color":"aqua","text":"傳送卷軸"}',minecraft:enchantments={levels:{"minecraft:infinity":1,"minecraft:mending":1}}] 1
execute if score world tpcooldown matches 31.. as @e[type=minecraft:armor_stand,tag=tphall] at @s if entity @a[distance=..13,scores={tppaper=1..}] run clear @a[distance=..13,scores={tppaper=1..},sort=nearest,limit=1] paper[minecraft:lore=['{"italic":false,"text":"使用後會將站在傳送區域內的所有玩家一併傳送至傳送大廳"}'],minecraft:item_name='{"italic":false,"color":"aqua","text":"傳送卷軸"}',minecraft:enchantments={levels:{"minecraft:infinity":1,"minecraft:mending":1}}] 1
###傳送範圍內的人給標籤(readytotp)
execute as @e[type=minecraft:armor_stand,tag=tphall] at @s run tag @a[distance=..8] add readytotp
###傳送範圍內的人撤標籤(readytotp)
execute as @e[type=minecraft:armor_stand,tag=tphall] at @s run tag @a[distance=8..13] remove readytotp
###傳送區域丟紙
execute if score world tpcooldown matches 0 at @e[type=minecraft:armor_stand,tag=tphall] as @e[distance=..8,type=item,nbt={Item:{id:"minecraft:paper",components:{"minecraft:lore":['{"italic":false,"text":"使用後會將站在傳送區域內的所有玩家一併傳送至傳送大廳"}'],"minecraft:item_name":'{"italic":false,"color":"aqua","text":"傳送卷軸"}',"minecraft:enchantments":{levels:{"minecraft:infinity":1,"minecraft:mending":1}}}}}] run function teleport_hall:teleport_to
###傳送區域外丟紙
execute at @e[type=minecraft:armor_stand,tag=tphall] as @e[distance=8..13,type=item,nbt={Item:{id:"minecraft:paper",components:{"minecraft:lore":['{"italic":false,"text":"使用後會將站在傳送區域內的所有玩家一併傳送至傳送大廳"}'],"minecraft:item_name":'{"italic":false,"color":"aqua","text":"傳送卷軸"}',"minecraft:enchantments":{levels:{"minecraft:infinity":1,"minecraft:mending":1}}}}}] run kill @s

###將傳送用盔甲座隱形
execute as @e[tag=maintphall,type=armor_stand] run data merge entity @s {Invisible:1b}
execute as @e[tag=tphall,type=armor_stand] run data merge entity @s {Invisible:1b}
###使傳送用盔甲座無敵
execute as @e[tag=maintphall,type=armor_stand] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=tphall,type=armor_stand] run data merge entity @s {Invulnerable:1b}