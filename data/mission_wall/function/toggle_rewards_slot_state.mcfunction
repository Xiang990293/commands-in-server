advancement revoke @s only mission_wall:interact_to_rewards_slot

execute as @n[type=interaction,tag=rewards_slot] unless data entity @s data.reward_type run return run function mission_wall:toggle_rewards_slot_state_if_else/setting_rewards_type

execute as @n[type=interaction,tag=rewards_slot,nbt={data:{reward_type:"item"}}] at @s as @n[type=item_display,tag=rewards_slot] if data entity @s data{hasItem:0b} unless data entity @p SelectedItem run return run title @p actionbar {"text":"請手持物品","color":"red"}
execute as @n[type=interaction,tag=rewards_slot,nbt={data:{reward_type:"item"}}] at @s as @n[type=item_display,tag=rewards_slot] if data entity @s data{hasItem:0b} if data entity @p SelectedItem run return run function mission_wall:toggle_rewards_slot_state_if_else/if_item_does_not_exist
execute as @n[type=interaction,tag=rewards_slot,nbt={data:{reward_type:"item"}}] at @s as @n[type=item_display,tag=rewards_slot] if data entity @s data{hasItem:1b} if data entity @p SelectedItem run return run title @p actionbar "已有物品佔用此欄位，空手互動將物品取下"
execute as @n[type=interaction,tag=rewards_slot,nbt={data:{reward_type:"item"}}] at @s as @n[type=item_display,tag=rewards_slot] if data entity @s data{hasItem:1b} unless data entity @p SelectedItem run return run function mission_wall:toggle_rewards_slot_state_if_else/if_item_does_exist

execute as @n[type=interaction,tag=rewards_slot] if data entity @s data.accept run return run title @p actionbar "已經完成獎勵設定，請點擊右邊告示牌生成任務告示牌"

execute as @n[type=interaction,tag=rewards_slot,nbt={data:{reward_type:"xp"}}] run data modify storage mission_wall:xp_compare a set from entity @p XpTotal
execute as @n[type=interaction,tag=rewards_slot,nbt={data:{reward_type:"xp"}}] store result storage mission_wall:xp_compare result int 1 run function math:larger_then with storage mission_wall:xp_compare {} 
execute as @n[type=interaction,tag=rewards_slot,nbt={data:{reward_type:"xp"}}] if data storage mission_wall:xp_compare {result:0} run return run title @p actionbar {"text":"經驗值不足，請確認經驗值足夠後再次點擊","color":"red"}
execute as @n[type=interaction,tag=rewards_slot,nbt={data:{reward_type:"xp"}}] if data storage mission_wall:xp_compare {result:1} run function mission_wall:toggle_rewards_slot_state_if_else/if_xp_enough with storage mission_wall:xp_compare

execute as @n[type=interaction,tag=rewards_slot,nbt={data:{reward_type:"xp_level"}}] run data modify storage mission_wall:xp_compare a set from entity @p XpLevel
execute as @n[type=interaction,tag=rewards_slot,nbt={data:{reward_type:"xp_level"}}] store result storage mission_wall:xp_compare result int 1 run function math:larger_then with storage mission_wall:xp_compare {} 
execute as @n[type=interaction,tag=rewards_slot,nbt={data:{reward_type:"xp_level"}}] if data storage mission_wall:xp_compare {result:0} run return run title @p actionbar {"text":"經驗等級不足，請確認經驗等級足夠後再次點擊","color":"red"}
execute as @n[type=interaction,tag=rewards_slot,nbt={data:{reward_type:"xp_level"}}] if data storage mission_wall:xp_compare {result:1} run function mission_wall:toggle_rewards_slot_state_if_else/if_xp_level_enough with storage mission_wall:xp_compare

# execute as @n[type=item_display,tag=mission_application_form] if data entity @s data{hasItem:0b} if data entity @p SelectedItem{id:"minecraft:paper"}.components{"minecraft:item_name":"任務發佈申請表","minecraft:item_model":"minecraft:dune_armor_trim_smithing_template"} run return run function mission_wall:toggle_application_form_state_if_else/if_application_form_does_not_exist
# execute as @n[type=item_display,tag=mission_application_form] if data entity @s data{hasItem:0b} run return run title @p actionbar "請放入任務發佈申請表"
# execute as @n[type=item_display,tag=mission_application_form] if data entity @s data{hasItem:1b} if data entity @p SelectedItem run return run title @p actionbar "已有申請表佔用此欄位，空手將申請表取下"
# execute as @n[type=item_display,tag=mission_application_form] if data entity @s data{hasItem:1b} unless data entity @p SelectedItem run return run function mission_wall:toggle_application_form_state_if_else/if_application_form_does_exist

# psudo code of logic above
# if item_display has no item and player has item "任務發佈申請表"
#   set item_display item to "任務發佈申請表"
#   clear player item "任務發佈申請表"
# else if item_display has item and player has no item
#   set player item to "任務發佈申請表"
#   reset item_display item to glass
# else if item_display has item and player has item
#   tell player "已有申請表佔用此欄位，空手將申請表取下"

# I know it's hard to read, but this is the best I can do with current command system.