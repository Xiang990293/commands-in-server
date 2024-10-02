advancement revoke @s only decoration:right_click_password_2
execute as @e[type=interaction,tag=2] if data entity @s interaction at @s align xyz positioned ~1 ~ ~ as @e[type=text_display,tag=result,limit=1,distance=..1] run tag @s add target_screen
execute as @e[type=interaction,tag=2] run data remove entity @s interaction
data modify storage decoration:temp_2 current set string entity @e[limit=1,tag=result,sort=nearest] text 1 -1
data modify storage decoration:temp_2 number set value "2"
execute as @e[type=interaction,tag=2] run function decoration:password_panel/password_add_number with storage decoration:temp_2