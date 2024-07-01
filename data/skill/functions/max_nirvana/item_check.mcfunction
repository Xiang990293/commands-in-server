execute if entity @e[type=item, distance=..5, nbt={Item:{tag:{ItemOwner:"max_chen504", SkillType:"nirvana"}}}] at @s run function skill:max_nirvana/trigger with entity @e[type=item, limit=1, sort=nearest, nbt={Item:{tag:{ItemOwner:"max_chen504", SkillType:"nirvana"}}}]
scoreboard players reset @s max_trigger_throw
advancement revoke @s only skill:max_nirvana/trigger_detect