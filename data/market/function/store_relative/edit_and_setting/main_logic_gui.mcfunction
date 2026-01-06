# the store gui tick logic start here
execute unless data block ~ ~ ~ Items[{Slot:10b}] if data entity @s data{is_key_inside:1b} run function market:store_relative/edit_and_setting/change_the_price with entity @s data
execute unless data block ~ ~ ~ Items[{Slot:12b}] if data entity @s data{is_key_inside:1b} run function market:store_relative/edit_and_setting/check_earns_and_get with entity @s data
execute unless data block ~ ~ ~ Items[{Slot:14b}] if data entity @s data{is_key_inside:1b} run random value 0..1
execute unless data block ~ ~ ~ Items[{Slot:16b}] if data entity @s data{is_key_inside:1b} run dialog show @p {type:confirmation,title:"移除商店",yes:{label:"刪除",action:{type:run_command,command:"execute as @n[type=marker,tag=market_elf] at @s run function market:market_destroyed with entity @s"}},no:{label:"取消",action:{type:run_command,command:"execute as @n[type=marker,tag=market_elf] at @s run data modify block ~ ~ ~ Items append from storage market:ui/setting_template Items[3]"}}}

# set the key to gui item and send it back when clicked
data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{gui_item:1b}}}]
execute if items block ~ ~ ~ container.* * if data entity @s data{is_key_inside:1b} run particle end_rod ~ ~1 ~
execute if items block ~ ~ ~ container.* * if data entity @s data{is_key_inside:1b} run data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".gui_item set value true
execute if items block ~ ~ ~ container.* * if data entity @s data{is_key_inside:1b} run data modify block ~ ~ ~ Items[0].Slot set value 22b
execute if items block ~ ~ ~ container.* * if data entity @s data{is_key_inside:0b} run summon item ~ ~ ~ {Item:{id:"structure_void",count:1,components:{"minecraft:custom_data":{place_holder:1b}}}}
data modify entity @n[nbt={Item:{components:{"minecraft:custom_data":{place_holder:1b}}}}] Item set from block ~ ~ ~ Items[0]
execute if items block ~ ~ ~ container.* * if data entity @s data{is_key_inside:0b} run data remove block ~ ~ ~ Items
execute if items block ~ ~ ~ container.* * if data entity @s data{is_key_inside:1b} run data remove block ~ ~ ~ Items[0]

# execute unless data block ~ ~ ~ Items[{Slot:22b}] if data entity @s data{is_key_inside:0b} run data modify block ~ ~ ~ Items[{Slot:22b}] set from entity @s data.key
# $execute unless data block ~ ~ ~ Items[{Slot:22b}] if data entity @s data{is_key_inside:1b} run return run summon item ~ ~ ~ {Item:$(key)}
data modify block ~ ~ ~ Items append from storage market:ui/setting_template Items[0]
data modify block ~ ~ ~ Items append from storage market:ui/setting_template Items[1]
data modify block ~ ~ ~ Items append from storage market:ui/setting_template Items[2]
data modify block ~ ~ ~ Items append from storage market:ui/setting_template Items[3]
execute if data entity @s data{is_key_inside:0b} run data modify block ~ ~ ~ Items append from storage market:ui/setting_template Items[4]
# execute if data entity @s data{is_key_inside:0b} run return run data modify block ~ ~ ~ Items[{Slot:22b}].components."minecraft:custom_data".gui_item set value true