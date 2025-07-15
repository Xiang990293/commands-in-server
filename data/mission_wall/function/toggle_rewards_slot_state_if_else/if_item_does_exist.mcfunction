item replace entity @p weapon.mainhand from entity @s container.0
data modify entity @s item set value {id:"minecraft:glass",count:1b}
data modify entity @s data.hasItem set value 0b
data remove storage mission_wall:request rewards
data modify entity @n[type=interaction,tag=rewards_slot] data.accept set value false