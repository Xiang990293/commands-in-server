advancement revoke @s only decoration:right_click_left_door

#框選實體範例指令，可以貼到重覆行指令方塊測試效果，marker請召喚在框選區域中x,y,z都最小的地方
#execute as @e[type=marker,sort=nearest] at @s align xz as @e[dx=0,dy=0,dz=0,type=!minecraft:marker] run playsound minecraft:block.note_block.bit ambient Xiang990293 ~ ~ ~

#被附近密碼鎖觸發
execute as @e[type=interaction,tag=left_door,tag=unlocked,tag=auto_trigger] at @s align xz as @e[dx=0,dy=0,dz=0,type=interaction] run tag @s add target_door_left
execute as @e[type=interaction,tag=left_door,tag=unlocked,tag=auto_trigger] at @s align xz as @e[type=block_display,sort=nearest,limit=1,distance=..5,tag=root] run tag @s add target_door_left

#框選所有即將啟動的門的互動實體與展示實體跟方塊，並賦予標籤target_door_left
execute as @e[type=interaction,tag=left_door,tag=unlocked] if data entity @s interaction at @s align xz as @e[dx=0,dy=0,dz=0,type=interaction] run tag @s add target_door_left
execute as @e[type=interaction,tag=left_door,tag=unlocked] if data entity @s interaction at @s align xz as @e[type=block_display,sort=nearest,limit=1,distance=..5,tag=root] run tag @s add target_door_left
execute as @e[type=interaction,tag=left_door,tag=unlocked] run data remove entity @s interaction

execute as @e[sort=nearest,limit=1,distance=..5,tag=target_door_left,tag=!door_closed,tag=!moving_door_left] at @s run kill @e[type=interaction,tag=target_door_left]
execute as @e[sort=nearest,limit=1,distance=..5,tag=target_door_left,tag=!door_closed,tag=!moving_door_left] at @s run function decoration:left_door/close_left_door
execute as @e[sort=nearest,limit=1,distance=..5,tag=target_door_left,tag=door_closed,tag=!moving_door_left] at @s run function decoration:left_door/open_left_door
