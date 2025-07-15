scoreboard players set world tpcooldown 100
$tp @p[distance=..7,tag=tped] $(x) $(y) $(z)
gamemode survival @a[tag=tped,gamemode=adventure]
clear @a[tag=tped] stone_button[item_name={"text":"傳送按鈕","color":"#ea00ff","italic":false},minecraft:enchantment_glint_override=true]
