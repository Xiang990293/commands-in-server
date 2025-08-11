execute unless data entity @s equipment.offhand run return fail
execute as @n[type=marker,tag=market_elf] run item modify entity @p weapon.offhand {function:"copy_custom_data",ops:[{op:"replace",source:"UUID",target:"UUID"}],source:"this"}
$data modify block $(x) $(y) $(z) lock set from entity @s equipment.offhand
$data modify block $(x) $(y) $(z) lock.items set from entity @s equipment.offhand.id
data modify entity @n[type=marker,tag=market_elf] data.key set from entity @s equipment.offhand