execute if score world so_opic matches 1 run tellraw @a {"text":"創造模式一拳必殺 已關閉","color":"gray"}
execute if score world so_opic matches 0 run tellraw @a {"text":"未有任何變化，該項目已關閉","color":"gray"}
execute if score world so_opic matches 1 run scoreboard players set world so_opic 0