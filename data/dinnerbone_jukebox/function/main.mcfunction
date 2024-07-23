##### MAIN #####
## Name Jukebox
execute as @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"Dinnerbone"}'}}}}] at @s align x align y align z unless entity @e[tag=dinnerbone,distance=..0.5] positioned ~0.5 ~-1 ~0.5 if block ~ ~ ~ jukebox run function dinnerbone_jukebox:scripts_name_jukebox

##### /function dinnerbone_jukebox:scripts_name_jukebox #####
#summon minecraft:armor_stand ~ ~1 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1,Tags:["dinnerbone"],DisabledSlots:4144959,CustomNameVisible:1,CustomName:'{"text":"Dinnerbone"}'}
#kill @s
##### END /function dinnerbone_jukebox:scripts_name_jukebox #####

execute as @e[tag=dinnerbone] at @s unless block ~ ~-1 ~ jukebox run kill @s

## Play in reverse
# Pigstep
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_pigstep"}} run stopsound @p record
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_pigstep"}} run playsound minecraft:pigstep_reverse record @p
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_pigstep"}} run title @p actionbar {"text":"Now playing: Lena Raine - petsgiP","color":"red"}
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_pigstep"}} run give @p minecraft:music_disc_pigstep
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_pigstep"}} run setblock ~ ~-1 ~ jukebox

# 13
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_13"}} run stopsound @p record
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_13"}} run playsound minecraft:13_reverse record @p
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_13"}} run title @p actionbar {"text":"Now playing: C418 - 31","color":"red"}
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_13"}} run give @p minecraft:music_disc_13
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_13"}} run setblock ~ ~-1 ~ jukebox

# cat
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_cat"}} run stopsound @p record
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_cat"}} run playsound minecraft:cat_reverse record @p
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_cat"}} run title @p actionbar {"text":"Now playing: C418 - tac","color":"red"}
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_cat"}} run give @p minecraft:music_disc_cat
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_cat"}} run setblock ~ ~-1 ~ jukebox

# blocks
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_blocks"}} run stopsound @p record
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_blocks"}} run playsound minecraft:blocks_reverse record @p
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_blocks"}} run title @p actionbar {"text":"Now playing: C418 - skcolb","color":"red"}
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_blocks"}} run give @p minecraft:music_disc_blocks
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_blocks"}} run setblock ~ ~-1 ~ jukebox

# chirp
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_chirp"}} run stopsound @p record
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_chirp"}} run playsound minecraft:chirp_reverse record @p
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_chirp"}} run title @p actionbar {"text":"Now playing: C418 - prihc","color":"red"}
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_chirp"}} run give @p minecraft:music_disc_chirp
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_chirp"}} run setblock ~ ~-1 ~ jukebox

# far
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_far"}} run stopsound @p record
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_far"}} run playsound minecraft:far_reverse record @p
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_far"}} run title @p actionbar {"text":"Now playing: C418 - raf","color":"red"}
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_far"}} run give @p minecraft:music_disc_far
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_far"}} run setblock ~ ~-1 ~ jukebox

# mall
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_mall"}} run stopsound @p record
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_mall"}} run playsound minecraft:mall_reverse record @p
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_mall"}} run title @p actionbar {"text":"Now playing: C418 - llam","color":"red"}
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_mall"}} run give @p minecraft:music_disc_mall
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_mall"}} run setblock ~ ~-1 ~ jukebox

# mellohi
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_mellohi"}} run stopsound @p record
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_mellohi"}} run playsound minecraft:mellohi_reverse record @p
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_mellohi"}} run title @p actionbar {"text":"Now playing: C418 - ihollem","color":"red"}
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_mellohi"}} run give @p minecraft:music_disc_mellohi
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_mellohi"}} run setblock ~ ~-1 ~ jukebox

# stal
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_stal"}} run stopsound @p record
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_stal"}} run playsound minecraft:stal_reverse record @p
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_stal"}} run title @p actionbar {"text":"Now playing: C418 - lats","color":"red"}
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_stal"}} run give @p minecraft:music_disc_stal
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_stal"}} run setblock ~ ~-1 ~ jukebox

# strad
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_strad"}} run stopsound @p record
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_strad"}} run playsound minecraft:strad_reverse record @p
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_strad"}} run title @p actionbar {"text":"Now playing: C418 - darts","color":"red"}
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_strad"}} run give @p minecraft:music_disc_strad
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_strad"}} run setblock ~ ~-1 ~ jukebox

# ward
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_ward"}} run stopsound @p record
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_ward"}} run playsound minecraft:ward_reverse record @p
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_ward"}} run title @p actionbar {"text":"Now playing: C418 - draw","color":"red"}
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_ward"}} run give @p minecraft:music_disc_ward
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_ward"}} run setblock ~ ~-1 ~ jukebox

# 11
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_11"}} run stopsound @p record
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_11"}} run playsound minecraft:11_reverse record @p
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_11"}} run title @p actionbar {"text":"Now playing: C418 - 11","color":"red"}
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_11"}} run give @p minecraft:music_disc_11
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_11"}} run setblock ~ ~-1 ~ jukebox

# wait
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_wait"}} run stopsound @p record
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_wait"}} run playsound minecraft:wait_reverse record @p
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_wait"}} run title @p actionbar {"text":"Now playing: C418 - tiaw","color":"red"}
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_wait"}} run give @p minecraft:music_disc_wait
execute as @e[tag=dinnerbone] at @s if block ~ ~-1 ~ minecraft:jukebox{RecordItem:{id:"minecraft:music_disc_wait"}} run setblock ~ ~-1 ~ jukebox