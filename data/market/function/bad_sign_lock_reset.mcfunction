data modify block ~ ~ ~ is_waxed set value false
kill @n[type=marker]
title @s actionbar "請先在副手放置商店補貨用訪問鑰匙"
tellraw @s {"text":"鑰匙設定說明：\n","color":"yellow","bold":true,extra:[\
    "需要一個物品用於訪問商店箱子\n",\
    "1. 在副手放置商店補貨用訪問物品\n",\
    "2. 蹲下放置告示牌\n"]}
give @s honeycomb 1