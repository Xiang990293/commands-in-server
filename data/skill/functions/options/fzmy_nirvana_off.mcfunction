execute if score world so_fn matches 1 run tellraw @a {"text":"張博必殺技 已關閉","color":"gray"}
execute if score world so_fn matches 0 run tellraw @a {"text":"未有任何變化，該項目已關閉","color":"gray"}
execute if score world so_fn matches 1 run scoreboard players set world so_fn 0