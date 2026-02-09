$execute if score @p $(ItemOwner)_$(SkillType)_cooldown matches 1.. run return fail
$execute if score @p $(ItemOwner)_$(SkillType)_cooldown matches ..-1 run return fail
$execute as @p run function skill:$(ItemOwner)_$(SkillType)/trigger
$bossbar set minecraft:$(ItemOwner)_$(SkillType)_cooldown visible true
$scoreboard players set @p $(ItemOwner)_$(SkillType)_cooldown $(cool_down)
$bossbar set minecraft:$(ItemOwner)_$(SkillType)_cooldown value $(cool_down)
$bossbar set minecraft:$(ItemOwner)_$(SkillType)_cooldown max $(cool_down)
