scoreboard players set world tpcooldown 100
$execute as @e[tag=tped,distance=..7,type=!#technical_editor:technical_entities] in $(dimension) run spreadplayers $(x) $(z) 1 2 under $(y) false @s
gamemode survival @a[tag=tped,gamemode=adventure]
clear @a[tag=tped] stone_button[item_name={"text":"傳送按鈕","color":"#ea00ff","italic":false},minecraft:enchantment_glint_override=true]
