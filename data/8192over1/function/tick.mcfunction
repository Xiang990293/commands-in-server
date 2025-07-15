# initiallize the score the player nearby
execute as @n[type=marker,tag=8192over1] at @s unless score @p[distance=..20] 8192color matches 0.. store result score @p[distance=..20] 8192color run random value 0..1
execute as @n[type=marker,tag=8192over1] at @s unless score @p[distance=..20] 8192over1 matches 0.. run scoreboard players set @p[distance=..20] 8192over1 0
execute as @n[type=marker,tag=8192over1] at @s if entity @p[distance=..20] run data modify entity @n[type=text_display,tag=score] text set value ["連續次數: ", {"color":"yellow", "score":{"name": "@p", "objective":"8192over1"}}]

# check what the button is pressed
execute as @e[type=marker,tag=8192] at @s if block ~ ~ ~ stone_button[powered=true] if block ~ ~-1 ~ blue_wool run function 8192over1:button_pressed {color:0}
execute as @e[type=marker,tag=8192] at @s if block ~ ~ ~ stone_button[powered=true] if block ~ ~-1 ~ red_wool run function 8192over1:button_pressed {color:1}