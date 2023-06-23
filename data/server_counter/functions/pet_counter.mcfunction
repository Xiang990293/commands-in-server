#越風的寵物數量偵測
execute store result bossbar minecraft:cat_count value run execute if entity @e[nbt={Owner:[I;-1909247764,-341161287,-1479027778,-73125948]}]
execute store result score Xiang990293 cat_count run execute if entity @e[nbt={Owner:[I;-1909247764,-341161287,-1479027778,-73125948]}]
bossbar set minecraft:cat_count name ["",{"text":"翔越風的寵物數量(","color":"gold"},{"score":{"name":"Xiang990293","objective":"cat_count"},"color":"gold"},{"text":"/","color":"gold"},{"score":{"name":"Xiang990293","objective":"cat_count_max"},"color":"gold"},{"text":")","color":"gold"}]
execute store result bossbar minecraft:cat_count max run scoreboard players get Xiang990293 cat_count_max