#重複執行
##掛機系統(虛樗)
execute if score world option_afk matches 1 run function afk:loop
##掛機系統(國外)(目前無法使用)
#function afk:afk
##掛機系統(自製)(目前無法使用)
#execute if score world option_afkx matches 1 run function
##Dinnerbone jukebox
execute if score world option_dinner matches 1 run function dinnerbone_jukebox:main
##掉落物品管理員
execute if score world option_item_mana matches 1 run function items_manager:loop
##技能、大招與必殺技
execute if score world option_skill matches 1 run function skill:loop
##進度系統
function new_recipe:loop

#越風的寵物數量偵測
execute store result bossbar minecraft:cat_count value run execute if entity @e[nbt={Owner:[I;-1909247764,-341161287,-1479027778,-73125948]}]
execute store result score Xiang990293 cat_count run execute if entity @e[nbt={Owner:[I;-1909247764,-341161287,-1479027778,-73125948]}]
bossbar set minecraft:cat_count name ["",{"text":"翔越風的寵物數量(","color":"gold"},{"score":{"name":"Xiang990293","objective":"cat_count"},"color":"gold"},{"text":"/","color":"gold"},{"score":{"name":"Xiang990293","objective":"cat_count_max"},"color":"gold"},{"text":")","color":"gold"}]
execute store result bossbar minecraft:cat_count max run scoreboard players get Xiang990293 cat_count_max

#物品展示框隱形
execute as @e[type=item_frame,tag=invisiframe] run data merge entity @s {Invisible:1b}
execute as @e[type=item_frame,tag=!invisiframe] run data merge entity @s {Invisible:0b}

#筆記
#bossbar set minecraft:cat_count name ["",{"text":"翔越風的寵物數量(","color":"gold"},{"score":{"name":"Xiang990293","objective":"cat_count"},"color":"gold"},{"text":"/100)","color":"gold"}]
#execute store score Xiang990293 cat_count run bossbar get minecraft:xiang990293_cat_count
#{"text":"[偷偷工商作者YT]","color":"red","bold":true,"clickEvent":{"action":"open_url","value":"https://goo.gl/NkQoa1"},"hoverEvent":{"action":"show_text","value":{"text":"點擊前往→","color":"green"}}}
#{"text":"[點我花生好事]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/say hi"},"hoverEvent":{"action":"show_text","value":{"text":"點擊前往→","color":"green"}}}
#tellraw @a {"text":"[請勿點我]","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/give @p air 64"},"hoverEvent":{"action":"show_text","value":{"text":"點擊前往→","color":"green"}}}
#tellraw @a {\"text\":\"[點我不廢花生好事]\",\"color\":\"blue\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/give @p air 64\"},\"hoverEvent\":{\"action\":\"show_text\",\"value\":{\"text\":\"點擊前往→\",\"color\":\"green\"}}}
#
#
#
#
#可當作自我介紹之參考用
#{"text":"[偷偷工商作者YT]","color":"red","bold":true,"clickEvent":{"action":"open_url","value":"https://goo.gl/NkQoa1"},"hoverEvent":{"action":"show_text","value":{"text":"點擊前往→","color":"green"}}}
