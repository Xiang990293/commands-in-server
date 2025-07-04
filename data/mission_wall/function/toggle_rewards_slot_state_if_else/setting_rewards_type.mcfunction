data modify entity @s data.reward_type set from entity @n[type=item_display,tag=mission_application_form] item.components."minecraft:custom_data".reward_type
execute if data entity @s data{reward_type:"no_reward"} run data modify storage mission_wall:request no_reward set value {"translate":"mission.reward_context.no_reward"}
execute if data entity @s data{reward_type:"no_reward"} run data modify entity @s data.accept set value true
execute if data entity @s data{reward_type:"no_reward"} run return run title @p actionbar "點擊右邊告示牌生成任務告示牌，希望你的任務有人接ww"
execute if data entity @s data{reward_type:"xp"} run return run title @p actionbar "獎勵已設定為經驗值，確認經驗值足夠後再次點擊"
execute if data entity @s data{reward_type:"xp_level"} run return run title @p actionbar "獎勵已設定為經驗等級，確認經驗等級足夠後再次點擊"
execute if data entity @s data{reward_type:"item"} run return run title @p actionbar "獎勵已設定為物品，確認手持物品是獎勵物品後再次點擊"
