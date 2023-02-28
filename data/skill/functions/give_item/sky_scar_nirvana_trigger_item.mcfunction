##召喚物品實體法
#scoreboard players set sky_scar ssnc 160
#execute at sky_scar as sky_scar run summon item ~ ~ ~ {Item:{id:"minecraft:slime_ball",Count:1b,tag:{display:{Lore:['{"italic":false,"text":"使用後會在除了你以外最近的5位玩家，會在其位置召喚一隻高壓苦力怕"}'],Name:'{"italic":false,"color":"blue","text":"雷神"}'},Enchantments:[{lvl:1s,id:"minecraft:infinity"},{lvl:1s,id:"minecraft:mending"}]}}}
##給物品法(兩者可通用，但下者較簡單)
execute as sky_scar at @s run give @s slime_ball{display:{Lore:['{"italic":false,"text":"使用後會在除了你以外最近的5位玩家，會在其位置召喚一隻高壓苦力怕"}'],Name:'{"italic":false,"color":"blue","text":"雷神"}'},Enchantments:[{lvl:1s,id:"minecraft:infinity"},{lvl:1s,id:"minecraft:mending"}]} 1