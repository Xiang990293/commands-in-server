# 在對應的分數做對應的事
# 標題提醒預備開始前將遊戲中的玩家的跳躍力從0.42 設定成 0
execute if score minigame_1_world minigame_1_show_start_title matches 0 run execute in multi_world:command_minigame_sans as @a[team=start] run attribute @s minecraft:generic.jump_strength base set 0
# 開始顯示標題 (還在看要不要順便放緩速I
execute if score minigame_1_world minigame_1_show_start_title matches 0 run execute in multi_world:command_minigame_sans run title @a[team=start] title ["",{"text":".0.","obfuscated":true},{"text":"準備好開始了嗎?"},{"text":".0.","obfuscated":true}]
execute if score minigame_1_world minigame_1_show_start_title matches 0 run return 1

# 隔1秒後 標題講解遊戲目標 (標題執行前的指令是失明(倒數第二個標題會用)+緩速 I II III IV(循序漸進)
execute if score minigame_1_world minigame_1_show_start_title matches 1 run execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:slowness 20
execute if score minigame_1_world minigame_1_show_start_title matches 1 run execute in multi_world:command_minigame_sans run title @a[team=start] title ["",{"text":".0.","obfuscated":true},{"text":"逃脫"},{"text":".0.","obfuscated":true}]
execute if score minigame_1_world minigame_1_show_start_title matches 1 run return 2

# 隔1.5秒後
execute if score minigame_1_world minigame_1_show_start_title matches 2 run execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:slowness 20 1
execute if score minigame_1_world minigame_1_show_start_title matches 2 run execute in multi_world:command_minigame_sans run title @a[team=start] title ["",{"text":".0.","obfuscated":true},{"text":"存活"},{"text":".0.","obfuscated":true}]
execute if score minigame_1_world minigame_1_show_start_title matches 2 run return 3

# 隔1.5秒後
execute if score minigame_1_world minigame_1_show_start_title matches 3 run execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:blindness 10
execute if score minigame_1_world minigame_1_show_start_title matches 3 run execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:slowness 20 2
execute if score minigame_1_world minigame_1_show_start_title matches 3 run execute in multi_world:command_minigame_sans run title @a[team=start] title ["",{"text":".0.","obfuscated":true},{"text":"否則"},{"text":".0.","obfuscated":true}]
execute if score minigame_1_world minigame_1_show_start_title matches 3 run return 4

# 隔1.5秒後
execute if score minigame_1_world minigame_1_show_start_title matches 4 run execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:slowness 20 3
execute if score minigame_1_world minigame_1_show_start_title matches 4 run execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:blindness 10
execute if score minigame_1_world minigame_1_show_start_title matches 4 run execute in multi_world:command_minigame_sans run title @a[team=start] title ["",{"text":".0.","obfuscated":true},{"text":"死亡"},{"text":".0.","obfuscated":true}]
execute if score minigame_1_world minigame_1_show_start_title matches 4 run return 5

# 隔1.5秒後 隨後顯示倒數 遊戲即將開始 Enjoy!
execute if score minigame_1_world minigame_1_show_start_title matches 5 run execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:slowness 20 4
execute if score minigame_1_world minigame_1_show_start_title matches 5 run execute in multi_world:command_minigame_sans run title @a[team=start] title [{"text":"","bold":true,"color":"green"},{"text":".0.","obfuscated":true},{"text":"3"},{"text":".0.","obfuscated":true}]
execute if score minigame_1_world minigame_1_show_start_title matches 5 run return 6

# 隔1秒後
execute if score minigame_1_world minigame_1_show_start_title matches 6 run execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:slowness 20 5
execute if score minigame_1_world minigame_1_show_start_title matches 6 run execute in multi_world:command_minigame_sans run title @a[team=start] title [{"text":"","bold":true,"color":"yellow"},{"text":".0.","obfuscated":true},{"text":"2"},{"text":".0.","obfuscated":true}]
execute if score minigame_1_world minigame_1_show_start_title matches 6 run return 7

# 隔1秒後
execute if score minigame_1_world minigame_1_show_start_title matches 7 run execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:slowness 20 6
execute if score minigame_1_world minigame_1_show_start_title matches 7 run execute in multi_world:command_minigame_sans run title @a[team=start] title [{"text":"","bold":true,"color":"red"},{"text":".0.","obfuscated":true},{"text":"1"},{"text":".0.","obfuscated":true}]
execute if score minigame_1_world minigame_1_show_start_title matches 7 run execute in multi_world:command_minigame_sans as @a[team=start] run attribute @s minecraft:generic.jump_strength base set 0.42
execute if score minigame_1_world minigame_1_show_start_title matches 7 run return 8