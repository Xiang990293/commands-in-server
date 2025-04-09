# data modify storage test:01 Items set from block 6 2 -19 Items
# execute unless data block 6 2 -19 Items[] run data modify entity @e[tag=transfer,limit=1] data.ItemCount set value 0b
# tellraw @p {"entity":"@e[tag=transfer,limit=1]","nbt":"data.ItemCount"}
# execute store result entity @e[tag=transfer,limit=1] data.ItemCount byte 1 run execute if data block 6 2 -19 Items[]
# tellraw @p {"entity":"@e[tag=transfer,limit=1]","nbt":"data.ItemCount"}
# data modify storage test:01 Items append from entity Xiang990293 SelectedItem
# $data modify storage test:01 Items[-1].Slot set value $(ItemCount)b
# data modify block 6 2 -19 Items set from storage test:01 Items

$say $(x) $(y) $(z)