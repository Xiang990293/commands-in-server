# minecart A
summon chest_minecart ~ ~-5 ~ {Invulnerable:1b,Tags:["extrainvgive","extrainvboth"],NoGravity:1b}
# minecart B
summon chest_minecart ~ ~-6 ~ {Invulnerable:1b,Tags:["extrainvtake","extrainvboth"],NoGravity:1b}
# minecart C
summon chest_minecart ~ ~-7 ~ {Invulnerable:1b,Tags:["extraeqipgive","extrainvboth"],NoGravity:1b}
# minecart D
summon chest_minecart ~ ~-8 ~ {Invulnerable:1b,Tags:["extraeqiptake","extrainvboth"],NoGravity:1b}

playsound minecraft:ui.button.click ambient @s ~ ~ ~ 1 1

# set to 1 if evswextinv_lag is null
execute unless score @s evswextinv_lag matches 0.. run scoreboard players set @s evswextinv_lag 1
# tp @e[type=chest_minecart,tag=extrainvboth] ~ -100 ~
# kill @e[type=chest_minecart,tag=extrainvboth]

# scoreboard players operation @s evswextinv_lag = @s evswextinv_trig
# scoreboard players set @s[scores={evswextinv_trig=1..}] evswextinv_trig 0
# return run say @s

# items: player Inv > minecart B
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.0 from entity @s container.9
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.1 from entity @s container.10
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.2 from entity @s container.11
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.3 from entity @s container.12
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.4 from entity @s container.13
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.5 from entity @s container.14
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.6 from entity @s container.15
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.7 from entity @s container.16
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.8 from entity @s container.17
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.9 from entity @s container.18
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.10 from entity @s container.19
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.11 from entity @s container.20
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.12 from entity @s container.21
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.13 from entity @s container.22
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.14 from entity @s container.23
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.15 from entity @s container.24
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.16 from entity @s container.25
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.17 from entity @s container.26
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.18 from entity @s container.27
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.19 from entity @s container.28
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.20 from entity @s container.29
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.21 from entity @s container.30
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.22 from entity @s container.31
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.23 from entity @s container.32
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.24 from entity @s container.33
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.25 from entity @s container.34
item replace entity @e[type=minecraft:chest_minecart,tag=extrainvtake,sort=nearest,limit=1] container.26 from entity @s container.35
# items: player Equip > minecart D
item replace entity @e[type=minecraft:chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] container.0 from entity @s container.0
item replace entity @e[type=minecraft:chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] container.1 from entity @s container.1
item replace entity @e[type=minecraft:chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] container.2 from entity @s container.2
item replace entity @e[type=minecraft:chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] container.3 from entity @s container.3
item replace entity @e[type=minecraft:chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] container.4 from entity @s container.4
item replace entity @e[type=minecraft:chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] container.5 from entity @s container.5
item replace entity @e[type=minecraft:chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] container.6 from entity @s container.6
item replace entity @e[type=minecraft:chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] container.7 from entity @s container.7
item replace entity @e[type=minecraft:chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] container.8 from entity @s container.8
item replace entity @e[type=minecraft:chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] container.9 from entity @s armor.head
item replace entity @e[type=minecraft:chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] container.10 from entity @s armor.chest
item replace entity @e[type=minecraft:chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] container.11 from entity @s armor.legs
item replace entity @e[type=minecraft:chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] container.12 from entity @s armor.feet
item replace entity @e[type=minecraft:chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] container.13 from entity @s weapon.offhand

# get player uuid for storing inventories individually using uuid as tags key of data storage
data modify storage extrainvdata:uid uid0 set from entity @s UUID[0]
data modify storage extrainvdata:uid uid1 set from entity @s UUID[1]
data modify storage extrainvdata:uid uid2 set from entity @s UUID[2]
data modify storage extrainvdata:uid uid3 set from entity @s UUID[3]
execute store result storage extrainvdata:uid lag int 1 run scoreboard players get @s evswextinv_lag
execute store result storage extrainvdata:uid trig int 1 run scoreboard players get @s evswextinv_trig

# items: minecart B > player[uid].inv
execute if entity @s[scores={evswextinv_lag=1..10}] as @e[type=chest_minecart,tag=extrainvtake,sort=nearest,limit=1] run function evilonesw_extrainv:data_from_inv/i with storage extrainvdata:uid
# items: minecart D > player[uid].equip
execute if entity @s[scores={evswextinv_lag=1..10}] as @e[type=chest_minecart,tag=extraeqiptake,sort=nearest,limit=1] run function evilonesw_extrainv:data_from_inv/-i with storage extrainvdata:uid

# items: player[uid].inv > minecart A
execute if entity @s[scores={evswextinv_trig=1..10}] as @e[type=chest_minecart,tag=extrainvgive,sort=nearest,limit=1] run function evilonesw_extrainv:inv_from_data/1 with storage extrainvdata:uid
# items: player[uid].equip > minecart C
execute if entity @s[scores={evswextinv_trig=1..10}] as @e[type=chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] run function evilonesw_extrainv:inv_from_data/-1 with storage extrainvdata:uid

# items: minecart A > player Inv
item replace entity @s container.9 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.0
item replace entity @s container.10 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.1
item replace entity @s container.11 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.2
item replace entity @s container.12 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.3
item replace entity @s container.13 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.4
item replace entity @s container.14 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.5
item replace entity @s container.15 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.6
item replace entity @s container.16 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.7
item replace entity @s container.17 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.8
item replace entity @s container.18 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.9
item replace entity @s container.19 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.10
item replace entity @s container.20 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.11
item replace entity @s container.21 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.12
item replace entity @s container.22 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.13
item replace entity @s container.23 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.14
item replace entity @s container.24 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.15
item replace entity @s container.25 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.16
item replace entity @s container.26 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.17
item replace entity @s container.27 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.18
item replace entity @s container.28 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.19
item replace entity @s container.29 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.20
item replace entity @s container.30 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.21
item replace entity @s container.31 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.22
item replace entity @s container.32 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.23
item replace entity @s container.33 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.24
item replace entity @s container.34 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.25
item replace entity @s container.35 from entity @e[type=minecraft:chest_minecart,tag=extrainvgive,sort=nearest,limit=1] container.26
# items: minecart C > player Equip
item replace entity @s container.0 from entity @e[type=minecraft:chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] container.0
item replace entity @s container.1 from entity @e[type=minecraft:chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] container.1
item replace entity @s container.2 from entity @e[type=minecraft:chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] container.2
item replace entity @s container.3 from entity @e[type=minecraft:chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] container.3
item replace entity @s container.4 from entity @e[type=minecraft:chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] container.4
item replace entity @s container.5 from entity @e[type=minecraft:chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] container.5
item replace entity @s container.6 from entity @e[type=minecraft:chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] container.6
item replace entity @s container.7 from entity @e[type=minecraft:chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] container.7
item replace entity @s container.8 from entity @e[type=minecraft:chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] container.8
item replace entity @s armor.head from entity @e[type=minecraft:chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] container.9
item replace entity @s armor.chest from entity @e[type=minecraft:chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] container.10
item replace entity @s armor.legs from entity @e[type=minecraft:chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] container.11
item replace entity @s armor.feet from entity @e[type=minecraft:chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] container.12
item replace entity @s weapon.offhand from entity @e[type=minecraft:chest_minecart,tag=extraeqipgive,sort=nearest,limit=1] container.13


tp @e[type=chest_minecart,tag=extrainvboth] ~ -100 ~
kill @e[type=chest_minecart,tag=extrainvboth]

# evswextinv_lag < evswextinv_trig
scoreboard players operation @s evswextinv_lag = @s evswextinv_trig
scoreboard players set @s[scores={evswextinv_trig=1..}] evswextinv_trig 0