scoreboard objectives add tpcooldown dummy
# execute if score world execute_count matches 1 run scoreboard players set world tpcooldown 0
bossbar add tp_cooldown {"text":"傳送 冷卻","color":"blue"}
bossbar set tp_cooldown color purple
bossbar set tp_cooldown players @a
bossbar set tp_cooldown max 100