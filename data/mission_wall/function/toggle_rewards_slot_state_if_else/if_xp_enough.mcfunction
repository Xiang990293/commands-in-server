$xp add @p -$(b) points
$data modify entity @s data.xp_amount set value $(b)
data modify entity @s data.accept set value true
data modify storage mission_wall:request xp set from entity @s data.xp_amount
$title @p actionbar "經驗值已扣除 $(b)，點擊右邊告示牌生成任務告示牌"