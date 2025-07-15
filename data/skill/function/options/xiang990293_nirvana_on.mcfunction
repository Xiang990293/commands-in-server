execute if score world so_xn matches 0 run tellraw @a {"text":"傳送殿堂 已開啟","color":"gray"}
execute if score world so_xn matches 1 run tellraw @a {"text":"未有任何變化，該項目已開啟","color":"gray"}
execute if score world so_xn matches 0 run scoreboard players set world so_xn 1