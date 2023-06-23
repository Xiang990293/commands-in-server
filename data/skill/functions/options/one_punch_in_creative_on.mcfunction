execute if score world so_opic matches 0 run tellraw @a {"text":"創造模式一拳必殺 已開啟","color":"gray"}
execute if score world so_opic matches 1 run tellraw @a {"text":"未有任何變化，該項目已開啟","color":"gray"}
execute if score world so_opic matches 0 run scoreboard players set world so_opic 1
effect give @a[gamemode=creative] strength 1 255 true