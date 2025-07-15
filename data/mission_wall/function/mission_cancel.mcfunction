execute unless data block ~ ~ ~ components."minecraft:custom_data"{status:"accepted"} run return run title @s actionbar "這個任務已被完成或未被接取"
data modify block ~ ~ ~ front_text.messages[2] set value ""
data modify block ~ ~ ~ front_text.color set value "black"
data modify block ~ ~ ~ front_text.has_glowing_text set value false
title @s actionbar "任務已取消"
item replace entity @s weapon.mainhand with air
return run data modify block ~ ~ ~ components."minecraft:custom_data".status set value "waiting"
return run data modify block ~ ~ ~ components."minecraft:custom_data".accepter set value "none"