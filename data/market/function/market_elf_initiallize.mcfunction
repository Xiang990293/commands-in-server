# initiallize market to alive status (to check if the market is destroyed unintentionally)
data modify entity @s data.alive set value true
data modify entity @s data.destroying set value false
data modify entity @s data.is_key_inside set value false
# copy the original item from the chest to restore to normal chest easily
data modify entity @s data.item_original set from block ~ ~ ~ Items
# save the chest state (for restoring the market)
execute if block ~ ~ ~ chest[facing=north] run data modify entity @s data.chest_facing set value "north"
execute if block ~ ~ ~ chest[facing=south] run data modify entity @s data.chest_facing set value "south"
execute if block ~ ~ ~ chest[facing=east] run data modify entity @s data.chest_facing set value "east"
execute if block ~ ~ ~ chest[facing=west] run data modify entity @s data.chest_facing set value "west"
# save the sign state (for restoring the market)
loot replace block ~ ~ ~ container.0 mine ^ ^ ^1 waxed_weathered_cut_copper_stairs[enchantments={silk_touch:1}]
data modify entity @s data.sign_wood_type set string block ~ ~ ~ Items[{Slot:0b}].id 10 -5
data modify block ~ ~ ~ Items set from entity @s data.item_original
# save the gui_item-ified Items (for restoring the market gui)
function market:store_relative/edit_and_setting/sync_original_to_sell
data modify entity @s data.item_sell set from block ~ ~ ~ Items

data modify entity @s data.attached_chest_pos.x set from block ~ ~ ~ x
data modify entity @s data.attached_chest_pos.y set from block ~ ~ ~ y
data modify entity @s data.attached_chest_pos.z set from block ~ ~ ~ z

data modify entity @s data.attached_sign_pos.x set from block ^ ^ ^1 x
data modify entity @s data.attached_sign_pos.y set from block ^ ^ ^1 y
data modify entity @s data.attached_sign_pos.z set from block ^ ^ ^1 z
data modify entity @s data.attached_sign_message.line2 set from block ^ ^ ^1 front_text.messages[1]
data modify entity @s data.attached_sign_message.line3 set from block ^ ^ ^1 front_text.messages[2]
data modify entity @s data.attached_sign_message.line4 set from block ^ ^ ^1 front_text.messages[3]

tag @s add market_elf
return run data modify entity @s data.mode set value "setting"