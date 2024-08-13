execute in multi_world:command_minigame_sans run spawnpoint @a[tag=ready_to_play,distance=..30] 8 -45 22
execute in multi_world:command_minigame_sans run gamemode adventure @a[tag=ready_to_play]
execute in multi_world:command_minigame_sans run tp @a[tag=ready_to_play] 8 -60 8
execute in multi_world:command_minigame_sans as @a[tag=ready_to_play] run attribute @s minecraft:generic.max_health base set 100
execute in multi_world:command_minigame_sans run effect give @a[tag=ready_to_play] minecraft:instant_health 1 25
execute in multi_world:command_minigame_sans run tag @a[tag=ready_to_play] add Playing_minigame_1
execute in multi_world:command_minigame_sans run team join start @a[tag=Playing_minigame_1]
execute in multi_world:command_minigame_sans run tag @a[tag=Playing_minigame_1] remove ready_to_play
# 標題提醒預備開始前將遊戲中的玩家的跳躍力從0.42 設定成 0
execute in multi_world:command_minigame_sans as @a[team=start] run attribute @s minecraft:generic.jump_strength base set 0
# 開始顯示標題 (還在看要不要順便放緩速I
execute in multi_world:command_minigame_sans run title @a[team=start] title [{"text":""},{"text":"&&","obfuscated":true},{"text":"準備好開始了嗎?"},{"text":"&&","obfuscated":true}]
# 隔一秒後 標題講解遊戲目標 (標題執行前的指令是失明(倒數第二個標題會用)+緩速 I II III IV(循序漸進)
execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:slowness 20
execute in multi_world:command_minigame_sans run title @a[team=start] title ["",{"text":".0.","obfuscated":true},{"text":"逃脫"},{"text":".0.","obfuscated":true}]
execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:slowness 20 1
execute in multi_world:command_minigame_sans run title @a[team=start] title ["",{"text":".0.","obfuscated":true},{"text":"存活"},{"text":".0.","obfuscated":true}]
execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:blindness 10
execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:slowness 20 2
execute in multi_world:command_minigame_sans run title @a[team=start] title ["",{"text":".0.","obfuscated":true},{"text":"否則"},{"text":".0.","obfuscated":true}]
execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:slowness 20 3
execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:blindness 10
execute in multi_world:command_minigame_sans run title @a[team=start] title ["",{"text":".0.","obfuscated":true},{"text":"死亡"},{"text":".0.","obfuscated":true}]
# 隨後顯示倒數 遊戲即將開始 Enjoy!
execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:slowness 20 4
execute in multi_world:command_minigame_sans run title @a[team=start] title [{"text":"","bold":true,"color":"green"},{"text":".0.","obfuscated":true},{"text":"3"},{"text":".0.","obfuscated":true}]
execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:slowness 20 5
execute in multi_world:command_minigame_sans run title @a[team=start] title [{"text":"","bold":true,"color":"yellow"},{"text":".0.","obfuscated":true},{"text":"2"},{"text":".0.","obfuscated":true}]
execute in multi_world:command_minigame_sans run effect give @a[team=start] minecraft:slowness 20 6
execute in multi_world:command_minigame_sans run title @a[team=start] title [{"text":"","bold":true,"color":"red"},{"text":".0.","obfuscated":true},{"text":"1"},{"text":".0.","obfuscated":true}]
execute in multi_world:command_minigame_sans as @a[team=start] run attribute @s minecraft:generic.jump_strength base set 0.42
# game start state change (let state [game_start] to true)
scoreboard players set minigame_1_world minigame_1_start 1

# game start loop (let minigame_1_chest.mcf start tick while [game_start] is true)
function server_pack:command_minigame_sans/minigame_1_chest