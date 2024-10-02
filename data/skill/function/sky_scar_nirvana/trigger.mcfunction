kill @e[predicate=skill:sky_scar_nirvana_trigger_item_check]
execute store result score world mobgriefing run gamerule mobGriefing
gamerule mobGriefing false
function skill:sky_scar_nirvana/bomb
scoreboard players set sky_scar ssky_skar_nirvana_cooldown 600