execute if score world option_itemana matches 0 run tellraw @a {"text":"掉落物品管理員 已啟用","color":"gray"}
execute if score world option_itemana matches 1 run tellraw @a {"text":"未有任何變化，該項目已開啟","color":"gray"}
execute if score world option_itemana matches 0 run scoreboard players set world option_itemana 1