execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run effect give @a[distance=..250] minecraft:speed 1 1 true
# execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run effect give @a[gamemode=creative,distance=..256] minecraft:night_vision 20 0 true

execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run title @a[distance=250..256,gamemode=adventure] actionbar {"text":"前面的區域，等等再來用心探索吧！","color":"gold"}
execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run title @a[distance=250..256,gamemode=creative] actionbar {"text":"前方生存區域，禁止飛行！","color":"gold"}
execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run effect give @a[distance=250..251] minecraft:slowness 1 0 true
execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run effect give @a[distance=251..252] minecraft:slowness 1 1 true
execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run effect give @a[distance=252..253] minecraft:slowness 1 2 true
execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run effect give @a[distance=253..254] minecraft:slowness 1 3 true
execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run effect give @a[distance=254..255] minecraft:slowness 1 4 true
execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run effect give @a[distance=255..256] minecraft:slowness 1 5 true

execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run title @a[distance=256..260,gamemode=survival] actionbar {"text":"進入重生島管制區域，請勿進行破壞","color":"gold"}
execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run gamemode adventure @a[distance=256..260,gamemode=survival]
execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run title @a[distance=256..260,gamemode=creative] actionbar {"text":"生存區域禁止飛行，給我回來！","color":"gold"}
execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run tp @a[distance=256..260,gamemode=creative] 259 64 -200
execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run title @a[distance=256..260,gamemode=adventure] actionbar {"text":"請透過傳送按鈕進入生存區域，或是使用隨機傳送功能","color":"gold"}
execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run tp @a[distance=256..260,gamemode=adventure] 259 64 -200

# execute as @e[type=marker,tag=worldspawnpoint,limit=1] at @s run gamemode survival @a[distance=260..,gamemode=adventure]