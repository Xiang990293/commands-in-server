kill @e[distance=..10,tag=!to_spectator_max]
execute as @e[distance=10..30] store result score @e health_default run attribute @s max_health base get
execute as @e[distance=10..30] run attribute @s max_health base set 1
execute as @e[distance=10..30] run damage @s 0.1 player_attack by @a[limit=1,tag=to_spectator_max]
function skill:max_chen504_nirvana/reset_health_max {"health":health_default}