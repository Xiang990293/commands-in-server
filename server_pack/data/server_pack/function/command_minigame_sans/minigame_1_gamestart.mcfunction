execute in multi_world:command_minigame_sans run spawnpoint @a[tag=ready_to_play,distance=..30] 8 -45 22
execute in multi_world:command_minigame_sans run gamemode adventure @a[tag=ready_to_play]
execute in multi_world:command_minigame_sans run tp @a[tag=ready_to_play] 8 -60 8

# game start state change (let state [game_start] to true)
scoreboard players set minigame_1_world minigame_1_start 1

# game start loop (let minigame_1_chest.mcf start tick while [game_start] is true)
function server_pack:command_minigame_sans/minigame_1_chest