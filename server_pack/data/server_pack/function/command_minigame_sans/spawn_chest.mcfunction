execute in multi_world:command_minigame_sans run fill 21 -60 21 -5 -60 -5 air
execute in multi_world:command_minigame_sans run kill @e[type=item,x=-7,y=-60,z=-7,dx=30,dy=2,dz=30]
execute in multi_world:command_minigame_sans run function server_pack:command_minigame_sans/put_all_chest_on_field

# 執行結束後排定30秒後自動再次執行 (當遊戲仍在進行 - minigame_1_world 的 minigame_1_start == 1)
execute if score minigame_1_world minigame_1_start matches 1 run schedule function server_pack:command_minigame_sans/spawn_chest 30s