advancement revoke @s only teleport_hall:inventory_change_check
execute at @a as @n[type=item] if predicate teleport_hall:tp_hall_trigger_item_check unless entity @e[type=armor_stand,tag=tphall,distance=..8] run return -1
execute at @a as @n[type=item] if predicate teleport_hall:tp_hall_trigger_item_check run function teleport_hall:teleport_to