execute as sky_scar at @s run kill @e[predicate=skill:sky_scar_nirvana_trigger_item_check]
execute store result score world mobgriefing run gamerule mobGriefing
gamerule mobGriefing false
function skill:sky_scar_nirvana/sky_scar_nirvana
scoreboard players set sky_scar ssnc 600