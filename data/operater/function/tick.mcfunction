execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run gamemode adventure @a[distance=256..260,gamemode=survival]
execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run tp @a[distance=256..260] 259 64 -200
execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run effect give @a[gamemode=creative,distance=..256] minecraft:night_vision 20 0 true