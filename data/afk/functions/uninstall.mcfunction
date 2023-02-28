# ---------- 清除板板 ----------
##========== 基本動作 ==========
scoreboard objectives remove s1 
scoreboard objectives remove s2 
scoreboard objectives remove s3 
scoreboard objectives remove s4 
##========== 交通公具 ==========
scoreboard objectives remove t1
scoreboard objectives remove t2
scoreboard objectives remove t3
scoreboard objectives remove t4
scoreboard objectives remove t5
##========== 水中游走 ==========
scoreboard objectives remove w1
scoreboard objectives remove w2
scoreboard objectives remove w3
##========== 特殊動作 ==========
scoreboard objectives remove m1
scoreboard objectives remove m2
scoreboard objectives remove m3
##========== 時間計算 ==========
scoreboard objectives remove timer
# ---------- 完結通知 ----------
tellraw @a [{"text":"您已將資料包 "},{"text":"掛網偵測器 ","color":"yellow"},{"text":"關閉","color":"red"},{"text":",感謝您的使用","color":"white"}]