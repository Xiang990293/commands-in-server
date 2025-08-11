# check item and summon a marker of new item
execute as @e[type=minecraft:bat,tag=check_item] at @s positioned ~ ~1 ~ summon marker at @s run data modify entity @s data.item set from entity @n[type=minecraft:item_frame] Item.id
kill @e[type=bat,tag=check_item]

# check block and summon a marker of new block
execute at @e[type=minecraft:bat,tag=check_block] positioned ~ ~1 ~ summon marker at @s as @p run loot replace block -71890 32 -72224 container.0 mine ~ ~.126 ~ netherite_shovel[minecraft:enchantments={silk_touch:1}]
execute at @e[type=minecraft:bat,tag=check_block] run data modify entity @n[type=minecraft:marker] data.item set from block -71890 32 -72224 Items[0].id
data remove block -71890 32 -72224 Items
kill @e[type=bat,tag=check_block]

execute at @e[type=minecraft:bat,tag=building] run data modify entity @n[type=marker, distance=..1] data.genre set value building
kill @e[type=bat,tag=building]
execute at @e[type=minecraft:bat,tag=colored] run data modify entity @n[type=marker, distance=..1] data.genre set value colored
kill @e[type=bat,tag=colored]
execute at @e[type=minecraft:bat,tag=combat] run data modify entity @n[type=marker, distance=..1] data.genre set value combat
kill @e[type=bat,tag=combat]
execute at @e[type=minecraft:bat,tag=edible] run data modify entity @n[type=marker, distance=..1] data.genre set value edible
kill @e[type=bat,tag=edible]
execute at @e[type=minecraft:bat,tag=functional] run data modify entity @n[type=marker, distance=..1] data.genre set value functional
kill @e[type=bat,tag=functional]
execute at @e[type=minecraft:bat,tag=ingredients] run data modify entity @n[type=marker, distance=..1] data.genre set value ingredients
kill @e[type=bat,tag=ingredients]
execute at @e[type=minecraft:bat,tag=natural] run data modify entity @n[type=marker, distance=..1] data.genre set value natural
kill @e[type=bat,tag=natural]
execute at @e[type=minecraft:bat,tag=redstone] run data modify entity @n[type=marker, distance=..1] data.genre set value redstone
kill @e[type=bat,tag=redstone]
execute at @e[type=minecraft:bat,tag=tools] run data modify entity @n[type=marker, distance=..1] data.genre set value tools
kill @e[type=bat,tag=tools]












# show the item player nearby
execute at @a[x=-71884,y=32,z=-72218,dx=135,dy=17,dz=135] positioned ~ ~5 ~ run title @p actionbar {"entity":"@n[type=marker, distance=..3]","nbt":"data.item"}

# set the item manually with item in offhand
# run when player click the text in book, avoid execute automatically