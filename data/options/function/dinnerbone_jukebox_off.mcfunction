execute if score world option_dinner matches 1 run tellraw @a {"text":"新增配方 已關閉","color":"gray"}
execute if score world option_dinner matches 0 run tellraw @a {"text":"未有任何變化，該項目已關閉","color":"gray"}
execute if score world option_dinner matches 1 run scoreboard players set world option_dinner 0