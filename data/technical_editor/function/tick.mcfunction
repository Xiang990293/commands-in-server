#新增標記
execute as @e[type=bat,tag=spawn_marker] at @s summon marker run data modify entity @s Tags append string entity @n CustomName 1 -1
kill @e[type=bat,tag=spawn_marker]
#刪除標記
execute as @e[type=bat,tag=kill_marker] at @s run kill @n[type=marker,distance=..3]
kill @e[type=bat,tag=kill_marker]

#新增物品展示實體
execute as @e[type=bat,tag=spawn_item_display] at @s summon item_display run data modify entity @s item set from entity @p Inventory[{Slot:-106b}]
kill @e[type=bat,tag=spawn_item_display]
#刪除物品展示實體
execute as @e[type=bat,tag=kill_item_display] at @s run kill @n[type=item_display,distance=..3]
kill @e[type=bat,tag=kill_item_display]
#修改物品展示實體
execute as @e[type=bat,tag=modify_item_display] at @s run data modify entity @s item set from entity @p Inventory[{Slot:-106b}]
kill @e[type=bat,tag=modify_item_display]

#新增文字展示實體
execute as @e[type=bat,tag=spawn_text_display] at @s summon text_display run data modify entity @s text set from entity @n CustomName
kill @e[type=bat,tag=spawn_text_display]
#刪除文字展示實體
execute as @e[type=bat,tag=kill_text_display] at @s run kill @n[type=text_display,distance=..3]
kill @e[type=bat,tag=kill_text_display]

#新增方塊展示實體
# ...
#刪除方塊展示實體
# ...

#新增標籤-展示實體與標籤
execute as @e[type=bat,tag=add_tag_technical] at @s run data modify entity @n[type=#technical_editor:technical_entities,distance=..3] Tags append string entity @s CustomName 1 -1
kill @e[type=bat,tag=add_tag_technical]
#移除標籤-展示實體與標籤
execute as @e[type=bat,tag=remove_tag_technical] run data modify storage technical_editor:remove_tag removing_tag set string entity @s CustomName 1 -1
execute as @e[type=bat,tag=remove_tag_technical] at @s as @n[type=#technical_editor:technical_entities,distance=..3] run function technical_editor:tag_editor/remove_tag_macro with storage technical_editor:remove_tag
kill @e[type=bat,tag=remove_tag_technical]

#新增標籤-所有實體
execute as @e[type=bat,tag=add_tag_general] at @s run data modify entity @n[distance=..3] Tags append string entity @s CustomName 1 -1
kill @e[type=bat,tag=add_tag_general]
#移除標籤-所有實體
execute as @e[type=bat,tag=remove_tag_general] run data modify storage technical_editor:remove_tag removing_tag set string entity @s CustomName 1 -1
execute as @e[type=bat,tag=remove_tag_general] at @s as @n[distance=..3] run function technical_editor:tag_editor/remove_tag_macro with storage technical_editor:remove_tag
kill @e[type=bat,tag=remove_tag_general]

# remove_tag_general
# execute as @e[type=bat,tag=spawn_item_display] at @s summon item_display run data modify entity @s block_state.Name set from entity @p Inventory[{Slot:-106b}].id

