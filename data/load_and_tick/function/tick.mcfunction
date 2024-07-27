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
##進度系統
function new_recipe:tick


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
