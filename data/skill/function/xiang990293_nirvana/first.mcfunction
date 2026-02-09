effect give Xiang990293 regeneration 30 1
effect give Xiang990293 slowness 2 0
effect give Xiang990293 resistance 2 3
execute at Xiang990293 run summon minecraft:evoker_fangs ~ ~ ~2 {Rotation:[0f,0f]}
execute at Xiang990293 run summon minecraft:evoker_fangs ~-1.4 ~ ~1.4 {Rotation:[45f,0f]}
execute at Xiang990293 run summon minecraft:evoker_fangs ~-2 ~ ~ {Rotation:[90f,0f]}
execute at Xiang990293 run summon minecraft:evoker_fangs ~-1.4 ~ ~-1.4 {Rotation:[135f,0f]}
execute at Xiang990293 run summon minecraft:evoker_fangs ~ ~ ~-2 {Rotation:[180f,0f]}
execute at Xiang990293 run summon minecraft:evoker_fangs ~1.4 ~ ~-1.4 {Rotation:[225f,0f]}
execute at Xiang990293 run summon minecraft:evoker_fangs ~2 ~ ~ {Rotation:[270f,0f]}
execute at Xiang990293 run summon minecraft:evoker_fangs ~1.4 ~ ~1.4 {Rotation:[315f,0f]}
execute at Xiang990293 as @e[name=!Xiang990293,distance=..3] run effect give @s wither 20 4 true
schedule function skill:xiang990293_nirvana/second 2t append