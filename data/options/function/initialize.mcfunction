#設定開關用
scoreboard objectives add option_skill dummy
scoreboard objectives add option_afk dummy
scoreboard objectives add option_afkx dummy
scoreboard objectives add option_item_mana dummy
scoreboard objectives add option_dinner dummy
#開關預設值
execute if score world execute_count matches 1 run scoreboard players set world option_skill 1
execute if score world execute_count matches 1 run scoreboard players set world option_afk 0
execute if score world execute_count matches 1 run scoreboard players set world option_afkx 0
execute if score world execute_count matches 1 run scoreboard players set world option_item_mana 1
execute if score world execute_count matches 1 run scoreboard players set world option_dinner 0
