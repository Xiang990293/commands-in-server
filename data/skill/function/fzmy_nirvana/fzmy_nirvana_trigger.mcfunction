execute as FzMY at @s run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:iron_ingot",Count:1b,tag:{display:{Lore:['{"italic":false,"text":"使用後會獲得10秒抗性V，並消除所有效果，冷卻時間80秒"}'],Name:'{"italic":false,"color":"red","text":"惡食"}'},Enchantments:[{lvl:1s,id:"minecraft:infinity"},{lvl:1s,id:"minecraft:mending"}]}}}]
function skill:fzmy_nirvana/fzmy_nirvana
scoreboard players set FzMY fzmy_nirvana_cooldown 1600
