# check and store the chest pos at the same time, if the block sign attached is not a chest, return fail
execute store success block ~ ~ ~ is_waxed byte 1 align xyz positioned ~.5 ~.5 ~.5 run function market:check_chest_and_put_data_on_store_elf with block ~ ~ ~
execute unless data block ~ ~ ~ {is_waxed:1b} run return fail

execute unless predicate market:is_sign_for_store \
        unless predicate market:is_sign_for_private \
        unless predicate market:is_sign_for_gacha_gacha \
        run return fail

# set the chest behind locked by the item held by player on offhand
execute store success block ~ ~ ~ is_waxed byte 1 run function market:lock_chest_with_item_on_offhand with entity @n[type=marker] data.attached_chest_pos
execute unless data block ~ ~ ~ {is_waxed:1b} run return run function market:bad_sign_lock_reset

execute if predicate market:is_sign_for_store run return run function market:to_store_sign with entity @n[type=marker] data.attached_chest_pos
execute if predicate market:is_sign_for_private run return run function market:to_private_sign with entity @n[type=marker] data.attached_chest_pos
execute if predicate market:is_sign_for_gacha_gacha run return run function market:to_gacha_gacha_sign with entity @n[type=marker] data.attached_chest_pos


# if block!=sign return (have been checked by advancement automatically)
# if block_behind!=chest return
# if data player_nearby equipment.offhand is null: return function destroy
# if text_on_chest['front'][0]=="[商店]":
# 	make block_behind data lock set from player_nearby equipment.offhand
# 	make block_behind data components."custom_data".special_sign_type set value "store"
# else if text_on_chest['front'][0]=="[私人]":
# 	make block_behind data lock set from player_nearby equipment.offhand
# 	make block_behind data components."custom_data".special_sign_type set value "private"
# else if text_on_chest['front'][0]=="[抽獎]":
# 	make block_behind data lock set from player_nearby equipment.offhand
# 	make block_behind data components."custom_data".special_sign_type set value "gacha"
