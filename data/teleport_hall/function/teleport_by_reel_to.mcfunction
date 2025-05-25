tag @n[type=player] add readytotp
execute as @a[tag=readytotp] at @s run particle dragon_breath ~ ~1 ~ 0.2 0.4 0.2 0.001 2000 force
schedule function teleport_hall:tp 0.5s replace
kill @e[predicate=teleport_hall:tp_reel_trigger_item_check]