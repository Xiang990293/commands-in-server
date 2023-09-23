scoreboard players add @s found_count 1
particle end_rod ~ ~ ~ 0 0 0 0 0
execute if entity @e[limit=1,type=#invisi_assistant:invisiable,sort=nearest,distance=..0.4] as @e[limit=1,type=#invisi_assistant:invisiable,sort=nearest,distance=..0.4] run function invisi_assistant:changer
execute if score @s found_count matches ..10 unless score @s is_found matches 1 positioned ^ ^ ^.4 run function invisi_assistant:finder_iterate