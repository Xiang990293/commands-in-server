execute if data entity @n[type=marker,tag=market_elf] data{is_key_inside:0b} as @n[type=marker,tag=market_elf] at @s positioned ^ ^ ^1 run function market:store_relative/send_information with block ~ ~ ~ front_text

execute if data entity @n[type=marker,tag=market_elf] data{is_key_inside:1b} as @n[type=marker,tag=market_elf] run return run function market:sign_right_clicked/toggle_store_mode

function market:store_relative/send_information with entity @n[type=marker,tag=market_elf]