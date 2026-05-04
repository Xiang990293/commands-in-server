scoreboard players set world tpcooldown 100
$spreadplayers $(x) $(z) 1 2 under $(y) false @e[tag=tped,distance=..7]
gamemode survival @a[tag=tped,gamemode=adventure]
clear @a[tag=tped] stone_button[item_name={"text":"傳送按鈕","color":"#ea00ff","italic":false},minecraft:enchantment_glint_override=true]
