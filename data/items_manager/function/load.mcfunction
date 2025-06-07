#刪除物品數量
scoreboard objectives add kill_item_count dummy
scoreboard players set world kill_item_count 0
scoreboard objectives add kill_left_time dummy
scoreboard players set world kill_left_time 0
#初始化完成通知
tellraw @a [{"text":"[物品刪除系統]：","color":"white"},{"text":"物品刪除系統已經初始化完畢","color":"yellow"}]