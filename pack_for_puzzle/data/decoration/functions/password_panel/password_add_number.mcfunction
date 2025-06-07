$data modify entity @e[limit=1,tag=result,sort=nearest] text set value '"$(current)$(number)"'
tag @e[limit=1,tag=target_screen,sort=nearest] remove target_screen
playsound block.note_block.bit block @p