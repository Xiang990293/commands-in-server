tag @s remove show_item_age

execute if data entity @s data.PrevCustomName run data modify entity @s CustomName set from entity @s data.PrevCustomName
execute if data entity @s data.PrevCustomNameVisible run data modify entity @s CustomNameVisible set from entity @s data.PrevCustomNameVisible
execute unless data entity @s data.PrevCustomName run data remove entity @s CustomName
execute unless data entity @s data.PrevCustomNameVisible run data modify entity @s CustomNameVisible set value false
data remove entity @s data