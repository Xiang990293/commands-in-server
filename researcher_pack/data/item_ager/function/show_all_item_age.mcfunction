data modify entity @s data.PrevCustomName set from entity @s CustomName
data modify entity @s data.PrevCustomNameVisible set from entity @s CustomNameVisible

data modify entity @s CustomNameVisible set value true
tag @s add show_item_age