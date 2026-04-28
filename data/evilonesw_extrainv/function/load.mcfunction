# say Extra-Inventory datapack Loaded
# scoreboard objectives add evswextinv_jump minecraft.custom:minecraft.jump
# scoreboard objectives add evswextinv_sneak minecraft.custom:minecraft.sneak_time
# scoreboard objectives add evswextinv_trig trigger
# scoreboard objectives add evswextinv_lag dummy
execute as @a run function evilonesw_extrainv:playerenable

# track the current inventory index player using, and generate the dialog data based on that
execute as @a run function evilonesw_extrainv:player_inventory_tracker_initiallize_macro with entity @s