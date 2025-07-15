summon chest_minecart ~ ~-5 ~ {Invulnerable:1b,Tags:["extrainvgive","extrainvboth"],NoGravity:1b}
summon chest_minecart ~ ~-6 ~ {Invulnerable:1b,Tags:["extrainvtake","extrainvboth"],NoGravity:1b}
playsound minecraft:ui.button.click ambient @s ~ ~ ~ 1 1

execute unless score @s evswextinv_lag matches 0.. run scoreboard players set @s evswextinv_lag 1
# tp @e[type=chest_minecart,tag=extrainvboth] ~ -100 ~
# kill @e[type=chest_minecart,tag=extrainvboth]

# scoreboard players operation @s evswextinv_lag = @s evswextinv_trig
# scoreboard players set @s[scores={evswextinv_trig=1..}] evswextinv_trig 0
# return run say @s

# copy items from player inventory to bottoom chest minecart below
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

# get player uuid for storing inventories individually using uuid as tags key of data storage
data modify storage extrainvdata:uid uid0 set from entity @s UUID[0]
data modify storage extrainvdata:uid uid1 set from entity @s UUID[1]
data modify storage extrainvdata:uid uid2 set from entity @s UUID[2]
data modify storage extrainvdata:uid uid3 set from entity @s UUID[3]

# copy items from player inventory (copied to bottom chest minecart) to player's own data storage
execute if entity @s[scores={evswextinv_lag=1}] as @e[type=chest_minecart,tag=extrainvtake,sort=nearest,limit=1] run function evilonesw_extrainv:data_from_inv/i1 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_lag=2}] as @e[type=chest_minecart,tag=extrainvtake,sort=nearest,limit=2] run function evilonesw_extrainv:data_from_inv/i2 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_lag=3}] as @e[type=chest_minecart,tag=extrainvtake,sort=nearest,limit=3] run function evilonesw_extrainv:data_from_inv/i3 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_lag=4}] as @e[type=chest_minecart,tag=extrainvtake,sort=nearest,limit=4] run function evilonesw_extrainv:data_from_inv/i4 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_lag=5}] as @e[type=chest_minecart,tag=extrainvtake,sort=nearest,limit=5] run function evilonesw_extrainv:data_from_inv/i5 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_lag=6}] as @e[type=chest_minecart,tag=extrainvtake,sort=nearest,limit=6] run function evilonesw_extrainv:data_from_inv/i6 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_lag=7}] as @e[type=chest_minecart,tag=extrainvtake,sort=nearest,limit=7] run function evilonesw_extrainv:data_from_inv/i7 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_lag=8}] as @e[type=chest_minecart,tag=extrainvtake,sort=nearest,limit=8] run function evilonesw_extrainv:data_from_inv/i8 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_lag=9}] as @e[type=chest_minecart,tag=extrainvtake,sort=nearest,limit=9] run function evilonesw_extrainv:data_from_inv/i9 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_lag=10}] as @e[type=chest_minecart,tag=extrainvtake,sort=nearest,limit=10] run function evilonesw_extrainv:data_from_inv/i10 with storage extrainvdata:uid

# copy items from player's own data storage to player inventory (copied to top chest minecart)
execute if entity @s[scores={evswextinv_trig=1}] as @e[type=chest_minecart,tag=extrainvgive,sort=nearest,limit=1] run function evilonesw_extrainv:inv_from_data/1 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_trig=2}] as @e[type=chest_minecart,tag=extrainvgive,sort=nearest,limit=2] run function evilonesw_extrainv:inv_from_data/2 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_trig=3}] as @e[type=chest_minecart,tag=extrainvgive,sort=nearest,limit=3] run function evilonesw_extrainv:inv_from_data/3 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_trig=4}] as @e[type=chest_minecart,tag=extrainvgive,sort=nearest,limit=4] run function evilonesw_extrainv:inv_from_data/4 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_trig=5}] as @e[type=chest_minecart,tag=extrainvgive,sort=nearest,limit=5] run function evilonesw_extrainv:inv_from_data/5 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_trig=6}] as @e[type=chest_minecart,tag=extrainvgive,sort=nearest,limit=6] run function evilonesw_extrainv:inv_from_data/6 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_trig=7}] as @e[type=chest_minecart,tag=extrainvgive,sort=nearest,limit=7] run function evilonesw_extrainv:inv_from_data/7 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_trig=8}] as @e[type=chest_minecart,tag=extrainvgive,sort=nearest,limit=8] run function evilonesw_extrainv:inv_from_data/8 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_trig=9}] as @e[type=chest_minecart,tag=extrainvgive,sort=nearest,limit=9] run function evilonesw_extrainv:inv_from_data/9 with storage extrainvdata:uid
execute if entity @s[scores={evswextinv_trig=10}] as @e[type=chest_minecart,tag=extrainvgive,sort=nearest,limit=10] run function evilonesw_extrainv:inv_from_data/10 with storage extrainvdata:uid

# replace items from top chest minecart below to player inventory
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


tp @e[type=chest_minecart,tag=extrainvboth] ~ -100 ~
kill @e[type=chest_minecart,tag=extrainvboth]

# replace the 
scoreboard players operation @s evswextinv_lag = @s evswextinv_trig
scoreboard players set @s[scores={evswextinv_trig=1..}] evswextinv_trig 0