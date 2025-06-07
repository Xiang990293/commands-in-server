execute if score world so_th matches 1 run tellraw @a {"text":"傳送殿堂 已關閉","color":"gray"}
execute if score world so_th matches 0 run tellraw @a {"text":"未有任何變化，該項目已關閉","color":"gray"}
execute if score world so_th matches 1 run scoreboard players set world so_th 0