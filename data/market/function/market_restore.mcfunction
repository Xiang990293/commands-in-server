# prevent malicious destruction of store.
$setblock ~ ~ ~ chest[facing=$(chest_facing)]
data modify block ~ ~ ~ Items set from entity @s data.item_original
$setblock ^ ^ ^1 oak_sign[facing=$(chest_facing)]
data modify block ^ ^ ^1 front_text.messages set from entity @s data.attached_sign_text.0
say hi