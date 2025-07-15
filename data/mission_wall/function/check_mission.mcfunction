tellraw @p [\
    {"text":"任務發怖："},{"nbt":"front_text.messages[3]","block":"~ ~ ~",interpret:true,color:"white"},"\n",\
    {"text":"任務名稱："},{"nbt":"front_text.messages[1]","block":"~ ~ ~"},"\n",\
    {"text":"任務內容："},{"nbt":"components.'minecraft:custom_data'.description","block":"~ ~ ~"}\
]
execute if data block ~ ~ ~ components.'minecraft:custom_data'{"reward_type":'no_reward'} run return run tellraw @p "任務獎勵? 沒有"
$execute if data block ~ ~ ~ components.'minecraft:custom_data'{"reward_type":'xp'} run return run tellraw @p [{"text":"任務獎勵："},{"translate":"mission.reward_context.$(reward_type)", with:["$(xp)"]}]
$execute if data block ~ ~ ~ components.'minecraft:custom_data'{"reward_type":'xp_level'} run return run tellraw @p [{"text":"任務獎勵："},{"translate":"mission.reward_context.$(reward_type)", with:["$(xp_level)"]}]
$execute if data block ~ ~ ~ components.'minecraft:custom_data'{"reward_type":'item'}.item.components."minecraft:container" run tellraw @p [{"text":"任務獎勵："},{"text":"[點擊查看物品資訊]", "hover_event":$(item), "click_event":{"action":"show_dialog", "dialog": {type:"notice",action:{type:"run_command",label:"知道了"},title:"物品詳細資訊",body:[{type:"item",item:$(item)}]}}}]
$execute if data block ~ ~ ~ components.'minecraft:custom_data'{"reward_type":'item'} run tellraw @p [{"text":"任務獎勵："},{"text":"[點擊查看物品資訊]", "hover_event":$(item), "click_event":{"action":"show_dialog", "dialog": {type:"notice",action:{type:"run_command",label:"知道了"},title:"物品詳細資訊",body:[{type:"item",item:$(item)}]}}}]
