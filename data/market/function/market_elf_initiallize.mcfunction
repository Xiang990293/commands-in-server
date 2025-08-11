data modify entity @s data.alive set value 1b

data modify entity @s data.item_original set from block ~ ~ ~ Items

data modify entity @s data.attached_chest_pos.x set from block ~ ~ ~ x
data modify entity @s data.attached_chest_pos.y set from block ~ ~ ~ y
data modify entity @s data.attached_chest_pos.z set from block ~ ~ ~ z

data modify entity @s data.attached_sign_pos.x set from block ^ ^ ^1 x
data modify entity @s data.attached_sign_pos.y set from block ^ ^ ^1 y
data modify entity @s data.attached_sign_pos.z set from block ^ ^ ^1 z

tag @s add market_elf
return run data modify entity @s data.mode set value "setting"