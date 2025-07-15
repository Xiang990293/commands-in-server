# ---------- 玩家掛網 ----------
##========== 達一分鐘 ==========

##========== 達三分鐘 ==========
execute if entity @a[scores={afktimer=3600}] run function afk:loop/warn/3

##========== 達五分鐘 ==========
execute if entity @a[scores={afktimer=6000}] run function afk:loop/warn/5

##========== 達十分鐘 ==========
execute if entity @a[scores={afktimer=12000}] run function afk:loop/warn/10
