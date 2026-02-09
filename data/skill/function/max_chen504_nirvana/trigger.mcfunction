kill @e[distance=..10]
effect give @a[distance=0.1..] poison 1 6 false
effect give @s resistance 5 2 true
effect give @s glowing 5 0 true
tag @s add to_spectator_max
schedule function skill:max_chen504_nirvana/to_spectator 5s