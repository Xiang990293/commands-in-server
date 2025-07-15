execute if score world option_afk matches 1 run tellraw @a {"text":"掛機偵測器(by虛樗) 已關閉","color":"gray"}
execute if score world option_afk matches 0 run tellraw @a {"text":"未有任何變化，該項目已關閉","color":"gray"}
execute if score world option_afk matches 1 run scoreboard players set world option_afk 0