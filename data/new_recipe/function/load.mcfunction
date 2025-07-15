#進度用記分板初始化
scoreboard objectives add blackstonecount minecraft.crafted:minecraft.blackstone
execute if score world execute_count matches 1 run scoreboard players set @a blackstonecount 0
scoreboard objectives add endstonecount minecraft.crafted:minecraft.end_stone
execute if score world execute_count matches 1 run scoreboard players set @a endstonecount 0
scoreboard objectives add endstonecount minecraft.crafted:minecraft.cobblestone
execute if score world execute_count matches 1 run scoreboard players set @a cobstonecount 0
scoreboard objectives add endstonecount minecraft.crafted:minecraft.cobbled_deepslate
execute if score world execute_count matches 1 run scoreboard players set @a cobdeslacount 0