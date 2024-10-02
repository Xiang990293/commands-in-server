execute as @e[tag=target_door_right,tag=moving_door_right] at @s positioned ~ ~ ~ run summon interaction ~.0625 ~ ~.0625 {Tags:["right_door","unlocked"],width:0.125f,height:2,response:1b}
execute as @e[tag=target_door_right,tag=moving_door_right] at @s positioned ~ ~ ~.125 run summon interaction ~.0625 ~ ~.0625 {Tags:["right_door","unlocked"],width:0.125f,height:2,response:1b}
execute as @e[tag=target_door_right,tag=moving_door_right] at @s positioned ~ ~ ~.25 run summon interaction ~.0625 ~ ~.0625 {Tags:["right_door","unlocked"],width:0.125f,height:2,response:1b}
execute as @e[tag=target_door_right,tag=moving_door_right] at @s positioned ~ ~ ~.375 run summon interaction ~.0625 ~ ~.0625 {Tags:["right_door","unlocked"],width:0.125f,height:2,response:1b}
execute as @e[tag=target_door_right,tag=moving_door_right] at @s positioned ~ ~ ~.5 run summon interaction ~.0625 ~ ~.0625 {Tags:["right_door","unlocked"],width:0.125f,height:2,response:1b}
execute as @e[tag=target_door_right,tag=moving_door_right] at @s positioned ~ ~ ~.625 run summon interaction ~.0625 ~ ~.0625 {Tags:["right_door","unlocked"],width:0.125f,height:2,response:1b}
execute as @e[tag=target_door_right,tag=moving_door_right] at @s positioned ~ ~ ~.75 run summon interaction ~.0625 ~ ~.0625 {Tags:["right_door","unlocked"],width:0.125f,height:2,response:1b}
execute as @e[tag=target_door_right,tag=moving_door_right] at @s positioned ~ ~ ~.875 run summon interaction ~.0625 ~ ~.0625 {Tags:["right_door","unlocked"],width:0.125f,height:2,response:1b}
tag @e[tag=moving_door_right] remove moving_door_right
tag @e[tag=target_door_right] remove target_door_right