tellraw @a [{"text":"||","color":"gray"},{"text":"                         成功套用伺服器擴充資料包!                         ","color":"yellow"},{"text":"||","color":"gray"}]
tellraw @a [{"text":"||","color":"gray"},{"text":"                  掛機偵測器","color":"red"},{"text":"由","color":"yellow"},{"text":" 虛樗(SY91419) ","color":"blue"},{"text":"獨立製作                  ","color":"yellow"},{"text":"||","color":"gray"}]
tellraw @a [{"text":"||","color":"gray"},{"text":"                 Dinnerbone唱片機由 ","color":"yellow"},{"text":"Phoenix sc","color":"aqua"},{"text":" 獨立製作             ","color":"yellow"},{"text":"||","color":"gray"}]
tellraw @a [{"text":"||","color":"gray"},{"text":"      由","color":"yellow"},{"text":" u/TheManOutOfReddit ","color":"aqua"},{"text":"發想     ","color":"yellow"},{"text":"||","color":"gray"}]
tellraw @a [{"text":"||","color":"gray"},{"text":"                   版本2.0.0  ","color":"gray"},{"text":"作者:","color":"yellow"},{"text":"Xiang990293","color":"aqua"},{"text":"翔越風                   ","color":"blue"},{"text":"||","color":"gray"}]
#/tellraw @a [{"text":"","color":"gray"},{"text":"1234567890123456789012345678901234567890123456789012","color":"aqua"},{"text":"||","color":"gray"}]
#||      成功套用伺服器擴充資料包!      ||
#|| 掛機偵測器由 虛樗(SY91419) 個人製作 ||
#||  版本2.0.0  作者:Xiang990293翔越風  ||
#|| Dinnerbone 唱片機由 Phoenix sc 獨立製作 ||
#||     由 u/TheManOutOfReddit 發想     ||

tellraw @a {"translate":"reload.message.resource_pack"}

#初始化
##掛網偵測器
# function afk:start
##物品消除系統
# function items_manager:load
##技能、大招與必殺技
# function skill:load

#計算一天已過幾刻用，早上六點為零
scoreboard objectives add daytime dummy

#遊戲規則設定(創建新世界時適用)
gamerule commandBlockOutput false

#設定載入

#版本號
#world execute_count => world pack_version 1
scoreboard objectives add pack_version dummy
execute unless score 2-1 pack_version matches 1
scoreboard players add world execute_count 1

#貓咪數量檢測用記分板
# scoreboard objectives add cat_count dummy
# execute if score world execute_count matches 1 run scoreboard players set Xiang990293 cat_count 0
# execute if score world execute_count matches 1 run bossbar add minecraft:cat_count {"text":" "}
# execute if score world execute_count matches 1 run bossbar set minecraft:cat_count color yellow
# execute if score world execute_count matches 1 run bossbar set minecraft:cat_count visible true
# execute if score world execute_count matches 1 run bossbar set minecraft:cat_count players Xiang990293
# scoreboard objectives add cat_count_max dummy
# execute if score world execute_count matches 1 run scoreboard players set Xiang990293 cat_count 200

#依照版本號載入

#數學計算使用
scoreboard objectives add math dummy