execute if score world so_ssn matches 1 run tellraw @a {"text":"天痕必殺技 已關閉","color":"gray"}
execute if score world so_ssn matches 0 run tellraw @a {"text":"未有任何變化，該項目已關閉","color":"gray"}
execute if score world so_ssn matches 1 run scoreboard players set world so_ssn 0