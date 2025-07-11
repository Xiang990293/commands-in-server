execute unless data block ~ ~ ~ components."minecraft:custom_data"{status:"completed"} run return run title @s actionbar "這個任務未被完成或未被接取"
$execute unless entity @p[name="$(accepter)"] run return run itle @s actionbar "請等待任務接收者上線"
data modify block ~ ~ ~ front_text.messages[2] set value "已結束"
data modify block ~ ~ ~ front_text.color set value "red"
data modify block ~ ~ ~ front_text.has_glowing_text set value false
data modify block ~ ~ ~ front_text.messages[0].click_event.command set value "title @s actionbar '任務已結束'"
title @s actionbar "已確認任務完成"
item replace entity @s weapon.mainhand with air
return run data modify block ~ ~ ~ components."minecraft:custom_data".status set value "closed"
$execute if data block ~ ~ ~ components."minecraft:custom_data"{"reward_type":"no_reward"} as $(accepter) run return run function mission_wall:president_of_amarica