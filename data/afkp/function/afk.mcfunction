#由跑酷金字塔作者製作，目前未啟用
scoreboard players add @a afk 0
scoreboard players enable @a[scores={afk=0},tag=ingame] afk
#scoreboard players set @a afkLimit 30

scoreboard players set @a[tag=!ingame] afkTimer 0
scoreboard players add @a[tag=ingame] afkTimer 1
scoreboard players set @a[scores={afkTimer=1,afk=2}] afk 3

scoreboard players reset @a[scores={aviating=1..}] afkTimer
scoreboard players reset @a[scores={jump=1..}] afkTimer
scoreboard players reset @a[scores={sprint=1..}] afkTimer
scoreboard players reset @a[scores={walk=1..}] afkTimer
scoreboard players reset @a[scores={walk_underwater=1..}] afkTimer
scoreboard players reset @a[scores={sneak=1..}] afkTimer
scoreboard players reset @a[scores={fly=1..}] afkTimer
scoreboard players reset @a[scores={climb=1..}] afkTimer

scoreboard players reset @a[scores={avitating=1..}] aviating
scoreboard players reset @a[scores={jump=1..}] jump
scoreboard players reset @a[scores={sprint=1..}] sprint
scoreboard players reset @a[scores={walk=1..}] walk
scoreboard players reset @a[scores={walk_underwater=1..}] walk_underwater
scoreboard players reset @a[scores={sneak=1..}] sneak
scoreboard players reset @a[scores={fly=1..}] fly
scoreboard players reset @a[scores={climb=1..}] climb

#set afk after 30 seconds
scoreboard players set @a[scores={afkTimer=600..,afk=0}] afk 1
tellraw @a[scores={afk=1}] {"text":"You are now afk (time reset to when you were last active)","color":"gray"}
execute as @a[scores={afk=1}] at @s run tellraw @a[distance=0.1..] [{"selector":"@s","color":"gray"},{"text":" is now afk","color":"gray"}]
tag @a[scores={afk=1}] add afk
#remove 30 seconds from time so they dont lose time
#execute as @a[scores={afk=1}] run scoreboard players operation @s time -= @s afkLimit
#scoreboard players set @a[scores={afk=1}] afk 2

#unset afk
tellraw @a[scores={afk=3}] {"text":"You are no longer afk","color":"gray"}
execute as @a[scores={afk=3}] at @s run tellraw @a[distance=0.1..] [{"selector":"@s","color":"gray"},{"text":" is no longer afk","color":"gray"}]
tag @a[scores={afk=3}] remove afk
scoreboard players set @a[scores={afk=3}] afkTimer 0
scoreboard players set @a[scores={afk=3}] afk 0