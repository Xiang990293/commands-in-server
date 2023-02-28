execute as sky_scar at @s run kill @e[distance=..2,nbt={Item:{id:"minecraft:slime_ball",Count:1b,tag:{display:{Lore:['{"italic":false,"text":"使用後會在除了你以外最近的5位玩家，會在其位置召喚一隻高壓苦力怕"}'],Name:'{"italic":false,"color":"blue","text":"雷神"}'},Enchantments:[{lvl:1s,id:"minecraft:infinity"},{lvl:1s,id:"minecraft:mending"}]}},OnGround:0b}]
execute store result score world mobgriefing run gamerule mobGriefing
gamerule mobGriefing false
function skill:sky_scar_nirvana/sky_scar_nirvana
scoreboard players set sky_scar ssnc 600