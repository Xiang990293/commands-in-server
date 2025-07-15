execute if score world option_dinner matches 0 run tellraw @a {"text":"新增配方 已啟用","color":"gray"}
execute if score world option_dinner matches 1 run tellraw @a {"text":"未有任何變化，該項目已開啟","color":"gray"}
execute if score world option_dinner matches 0 run scoreboard players set world option_dinner 1