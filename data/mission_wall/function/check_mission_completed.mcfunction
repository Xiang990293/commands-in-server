execute if data block ~ ~ ~ components.'minecraft:custom_data'{"status":'waiting'} run tellraw @p ["接取狀態：","未被接取"]
$execute if data block ~ ~ ~ components.'minecraft:custom_data'{"status":'accepted'} run tellraw @p ["接取狀態：已被接取，等待完成\n接受玩家：$(accepter)"]
$execute if data block ~ ~ ~ components.'minecraft:custom_data'{"status":'completed'} run tellraw @p ["接取狀態：已經完成，等待驗收\n接受玩家：$(accepter)"]
execute if data block ~ ~ ~ components.'minecraft:custom_data'{"reward_type":'no_reward',"status":'waiting'} run tellraw @p "你是不是應該考慮添加任務獎勵?"
execute if data block ~ ~ ~ components.'minecraft:custom_data'{"reward_type":'no_reward',"status":'waiting'} run advancement grant @p only mission_wall:mission_wall/there_is_no_such_thing_as_a_free_lunch
