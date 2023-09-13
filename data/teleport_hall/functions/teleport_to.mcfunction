execute as @a[tag=readytotp] at @s run scoreboard players set world tpcooldown 1000
#tag @a[tag=readytotp] add show_particle
execute as @a[tag=readytotp] at @s run particle dragon_breath ~ ~1 ~ 0.2 0.4 0.2 0.001 2000 force
schedule function skill:teleport_hall/tp 0.5s replace
kill @e[type=item,nbt={Item:{id:"minecraft:paper",tag:{display:{Lore:['{"italic":false,"text":"使用後會將站在傳送區域內的所有玩家一併傳送至傳送大廳"}'],Name:'{"italic":false,"color":"aqua","text":"傳送卷軸"}'},Enchantments:[{lvl:1s,id:"minecraft:infinity"},{lvl:1s,id:"minecraft:mending"}]}}}]
