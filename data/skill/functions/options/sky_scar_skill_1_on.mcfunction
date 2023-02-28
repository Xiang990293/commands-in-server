execute if score world so_sss1 matches 0 run tellraw @a {"text":"天痕技能一 已開啟","color":"gray"}
execute if score world so_sss1 matches 1 run tellraw @a {"text":"未有任何變化，該項目已開啟","color":"gray"}
execute if score world so_sss1 matches 0 run scoreboard players set world so_sss1 1