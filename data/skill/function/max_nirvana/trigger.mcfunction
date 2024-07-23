scoreboard players set @s max_trigger_throw 0
scoreboard players set @s max_chen504_nirvana_cooldown 600
kill @e[type=item,nbt={Item:{tag:{ItemOwner:"max_chen504", SkillType:"nirvana"}}}]
effect give @s resistance 5 2 true
effect give @s glowing 65 2 true
tag @s add to_spectator_max
schedule function skill:max_nirvana/to_spectator 5s