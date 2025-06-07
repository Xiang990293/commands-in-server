execute as @a[tag=to_spectator_max] run gamemode spectator
execute as @a[tag=to_spectator_max] at @s run function skill:max_chen504_nirvana/kill
tag @a[tag=to_spectator_max] add side_effect_start_max
tag @a[tag=to_spectator_max] remove to_spectator_max
schedule function skill:max_chen504_nirvana/side_effect 10s