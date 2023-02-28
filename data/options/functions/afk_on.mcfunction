execute if score world option_afk matches 0 run tellraw @a {"text":"掛機偵測器(by虛樗) 已啟用","color":"gray"}
execute if score world option_afk matches 1 run tellraw @a {"text":"未有任何變化，該項目已開啟","color":"gray"}
execute if score world option_afk matches 0 run scoreboard players set world option_afk 1