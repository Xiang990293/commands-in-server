# self lock protection, restore the market, gui interaction
execute as @e[type=marker,tag=market_elf] at @s run function market:store_relative/tick_execute_as_market_elf
