execute if data entity @s data{mode:"sell"} run tellraw @p "已切換為設定模式"
execute if data entity @s data{mode:"sell"} run return run data modify entity @s data.mode set value "setting"

execute if data entity @s data{mode:"setting"} run tellraw @p "已切換為交易模式"
execute if data entity @s data{mode:"setting"} run return run data modify entity @s data.mode set value "sell"

return run data modify entity @s data.mode set value "setting"