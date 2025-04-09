$scoreboard players set multi1 math $(a)
$scoreboard players set multi2 math $(b)
scoreboard players operation multi1 math *= multi2 math
return run scoreboard players get multi1 math