execute if score world so_ssn matches 0 run tellraw @a {"text":"天痕必殺技 已開啟","color":"gray"}
execute if score world so_ssn matches 1 run tellraw @a {"text":"未有任何變化，該項目已開啟","color":"gray"}
execute if score world so_ssn matches 0 run scoreboard players set world so_ssn 1