advancement revoke @s only decoration:right_click_password_submit
execute as @e[type=interaction,tag=submit] if data entity @s interaction at @s align xyz positioned ~1 ~ ~ as @e[type=text_display,tag=result,limit=1,distance=..1] run tag @s add target_screen
execute as @e[type=interaction,tag=submit] run data remove entity @s interaction
data modify storage decoration:temp_submit submit_answer set string entity @e[limit=1,tag=result,sort=nearest] text 1 -1
data modify entity @e[limit=1,tag=result,tag=target_screen,sort=nearest] text set value '""'
execute as @e[type=interaction,tag=submit] at @s run function decoration:password_panel/check_answer with storage decoration:temp_submit