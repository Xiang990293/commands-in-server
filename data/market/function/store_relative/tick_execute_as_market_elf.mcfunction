# self lock protection
execute store success entity @s data.is_key_inside byte 1 run function market:is_key_in_chest with entity @s data
execute if data entity @s data{is_key_inside:1b} run data remove block ~ ~ ~ lock
execute if data entity @s data{is_key_inside:0b} run data modify block ~ ~ ~ lock set from entity @s data.key
execute if data entity @s data{is_key_inside:0b} run data modify block ~ ~ ~ lock.items set from entity @s data.key.id

# restore the market when destroyed unintentionally
execute store success entity @s data.alive byte 1 run execute if block ~ ~ ~ chest
execute if data entity @s data{alive:0b,destroying:0b} run return run function market:market_restore with entity @s data
execute store success entity @s data.alive byte 1 run function market:is_sign_exist with entity @s data.attached_sign_pos
execute if data entity @s data{alive:0b,destroying:0b} run return run function market:market_restore with entity @s data

# the store setting logic
execute if data entity @s data{mode:"setting"} run function market:store_relative/edit_and_setting/main_logic_gui with entity @s data

# remove item thats should in gui
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{gui_item:1b}}}}]
clear @a *[custom_data~{gui_item:1b}]
