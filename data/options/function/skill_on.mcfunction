execute if score world option_skill matches 0 run tellraw @a {"text":"技能、大招與必殺技 已啟用","color":"gray"}
execute if score world option_skill matches 1 run tellraw @a {"text":"未有任何變化，該項目已開啟","color":"gray"}
execute if score world option_skill matches 0 run scoreboard players set world option_skill 1