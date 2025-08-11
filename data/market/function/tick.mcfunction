# self lock protection
execute as @e[type=marker,tag=market_elf] at @s store success entity @s data.is_key_inside byte 1 run function market:is_key_in_chest with entity @s data
execute as @e[type=marker,tag=market_elf] at @s if data entity @s data{is_key_inside:1b} run data remove block ~ ~ ~ lock
execute as @e[type=marker,tag=market_elf] at @s if data entity @s data{is_key_inside:0b} run data modify block ~ ~ ~ lock set from entity @s data.key
execute as @e[type=marker,tag=market_elf] at @s if data entity @s data{is_key_inside:0b} run data modify block ~ ~ ~ lock.items set from entity @s data.key.id

#
execute as @e[type=marker,tag=market_elf] at @s store success entity @s data.alive byte 1 run execute if block ~ ~ ~ chest
execute as @e[type=marker,tag=market_elf] at @s if data entity @s data{alive:0b} run return run function market:market_destroyed with entity @s
execute as @e[type=marker,tag=market_elf] at @s store success entity @s data.alive byte 1 run function market:is_sign_exist with entity @s data.attached_sign_pos
execute as @e[type=marker,tag=market_elf] at @s if data entity @s data{alive:0b} run return run function market:market_destroyed with entity @s



# the store gui tick logic start here


execute as @e[type=marker,tag=market_elf] at @s unless data block ~ ~ ~ Items[{Slot:10b}] run data modify block ~ ~ ~ Items set from storage market:ui/setting_template
execute as @e[type=marker,tag=market_elf] at @s unless data block ~ ~ ~ Items[{Slot:12b}] run 
execute as @e[type=marker,tag=market_elf] at @s unless data block ~ ~ ~ Items[{Slot:14b}] run 
execute as @e[type=marker,tag=market_elf] at @s unless data block ~ ~ ~ Items[{Slot:16b}] run dialog show @p {}
# function market:market_destroyed with entity @s
#

# remove item thats should in gui
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{gui_item:1b}}}}]
clear @a *[custom_data~{gui_item:1b}]
