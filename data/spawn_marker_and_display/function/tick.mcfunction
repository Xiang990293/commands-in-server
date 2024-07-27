execute as @e[type=villager,tag=spawn_marker] at @s summon marker run data modify entity @s Tags append string entity @n CustomName 1 -1
kill @e[type=villager,tag=spawn_marker]
execute as @e[type=villager,tag=add_marker_tag] at @s run data modify entity @n[type=marker,distance=..3] Tags append string entity @s CustomName 1 -1
kill @e[type=villager,tag=add_marker_tag]
execute as @e[type=villager,tag=kill_marker] at @s run kill @n[type=marker,distance=..3]
kill @e[type=villager,tag=kill_marker]
execute as @e[type=villager,tag=remove_marker_tag] run data modify storage spawn_marker_and_display:remove_marker_tag removing_tag set string entity @s CustomName 1 -1
execute as @e[type=villager,tag=remove_marker_tag] at @s as @n[type=marker,distance=..3] run function spawn_marker_and_display:remove_marker_tag_macro with storage spawn_marker_and_display:remove_marker_tag
kill @e[type=villager,tag=remove_marker_tag]

