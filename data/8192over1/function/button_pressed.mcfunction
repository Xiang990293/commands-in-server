execute store result score @p 8192color run random value 0..1
execute as @e[type=marker,tag=8192] at @s run setblock ~ ~ ~ minecraft:stone_button[face=floor,facing=east,powered=false]
$execute if score @p 8192color matches $(color) run return run function 8192over1:matched
$execute unless score @p 8192color matches $(color) run return run function 8192over1:mismatched
