execute as @a[tag=!show_color_palette,nbt={SelectedItem:{id:"minecraft:brush",components:{"minecraft:lore":[{"italic":false,"text":"拿在手上時，顯示顏色預覽"}],"minecraft:item_name":{"italic":false,"text":"調色筆刷"},"minecraft:enchantments":{levels:{"minecraft:infinity":1,"minecraft:mending":1}},"minecraft:custom_data":{color:"black"}}}}] run tag @s add show_color_palette
execute as @a[tag=show_color_palette,nbt=!{SelectedItem:{id:"minecraft:brush",components:{"minecraft:lore":[{"italic":false,"text":"拿在手上時，顯示顏色預覽"}],"minecraft:item_name":{"italic":false,"text":"調色筆刷"},"minecraft:enchantments":{levels:{"minecraft:infinity":1,"minecraft:mending":1}},"minecraft:custom_data":{color:"black"}}}}] run tag @s remove show_color_palette

execute as @a[tag=!show_vision_axis,nbt={SelectedItem:{id:"minecraft:recovery_compass"}}] run tag @s add show_vision_axis
execute as @a[tag=show_vision_axis,nbt=!{SelectedItem:{id:"minecraft:recovery_compass"}}] run tag @s remove show_vision_axis

execute as @a[tag=show_color_palette] at @s run function technical_editor:text_display/color_palette/tp_to_left_bottom_corner_player_screen
execute as @a[tag=show_vision_axis] at @s run function technical_editor:text_display/color_palette/show_vision_axis