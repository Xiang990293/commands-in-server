$xp add @p -$(b) levels
$data modify entity @s data.xp_level_amount set value $(b)
data modify entity @s data.accept set value true
data modify storage mission_wall:request xp_level set from entity @s data.xp_level_amount
$title @p actionbar "經驗等級已扣除 $(b)，點擊右邊告示牌生成任務告示牌"