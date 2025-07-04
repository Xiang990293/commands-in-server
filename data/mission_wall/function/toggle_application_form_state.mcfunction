advancement revoke @s only mission_wall:interact_to_mission_application_form
execute as @n[type=item_display,tag=mission_application_form] if data entity @s data{hasItem:0b} if data entity @p SelectedItem{id:"minecraft:paper"}.components{"minecraft:item_name":"任務發佈申請表","minecraft:item_model":"minecraft:dune_armor_trim_smithing_template"} run return run function mission_wall:toggle_application_form_state_if_else/if_application_form_does_not_exist
execute as @n[type=item_display,tag=mission_application_form] if data entity @s data{hasItem:0b} run return run title @p actionbar "請放入任務發佈申請表"
execute as @n[type=item_display,tag=mission_application_form] if data entity @s data{hasItem:1b} if data entity @p SelectedItem run return run title @p actionbar "已有申請表佔用此欄位，空手互動將申請表取下"
execute as @n[type=item_display,tag=mission_application_form] if data entity @s data{hasItem:1b} unless data entity @p SelectedItem run return run function mission_wall:toggle_application_form_state_if_else/if_application_form_does_exist

# psudo code of logic above
# if item_display has no item and player has item "任務發佈申請表"
#   set item_display item to "任務發佈申請表"
#   clear player item "任務發佈申請表"
# else if item_display has item and player has no item
#   set player item to "任務發佈申請表"
#   reset item_display item to glass
# else if item_display has item and player has item
#   tell player "已有申請表佔用此欄位，空手將申請表取下"

# I know it's hard to read, but this is the best I can do with current command system.