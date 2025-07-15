execute align xyz positioned ~.5 ~.5 ~.5 summon marker run tag @s add tphall_endpoint_button
execute as @n[type=marker,tag=tphall_endpoint_button] run data modify entity @s data set from entity @p SelectedItem.components."minecraft:custom_data"
execute as @n[type=marker,tag=tphall_endpoint_button] at @s run forceload add ~ ~
execute at @n[type=marker,tag=tphall_endpoint_button] summon text_display run tag @s add tphall_endpoint_button_text
execute as @n[type=text_display,tag=tphall_endpoint_button_text] run data modify entity @s text set from entity @n[type=marker,tag=tphall_endpoint_button] data.name
execute as @n[type=text_display,tag=tphall_endpoint_button_text] run data modify entity @s billboard set value "center"