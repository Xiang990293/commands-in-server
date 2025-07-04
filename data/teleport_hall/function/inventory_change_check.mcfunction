# check the inventory change and check if the item is a teleport reel or teleport hall trigger item
# if so, execute teleport_hall:teleport_by_reel_to / teleport_hall:teleport_to

# reset the triggerer
advancement revoke @s only teleport_hall:inventory_change_check

# check if the item is a teleport reel
execute at @a as @n[type=item] if predicate teleport_hall:tp_reel_trigger_item_check run function teleport_hall:teleport_by_reel_to

# check distance
execute at @a as @n[type=item] if predicate teleport_hall:tp_hall_trigger_item_check unless entity @e[type=armor_stand,tag=tphall,distance=..8] run return -1
execute at @a as @n[type=item] if predicate teleport_hall:tp_hall_trigger_item_check if entity @p[tag=tped] run return -1
execute at @a as @n[type=item] if predicate teleport_hall:tp_hall_trigger_item_check if entity @p[tag=!tped] run function teleport_hall:teleport_to