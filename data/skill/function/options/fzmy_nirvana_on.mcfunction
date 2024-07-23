execute if score world so_fn matches 0 run tellraw @a {"text":"張博必殺技 已開啟","color":"gray"}
execute if score world so_fn matches 1 run tellraw @a {"text":"未有任何變化，該項目已開啟","color":"gray"}
execute if score world so_fn matches 0 run scoreboard players set world so_fn 1