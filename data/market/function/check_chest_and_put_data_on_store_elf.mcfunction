# check and pass if the chest is already set
execute if data entity @n[type=marker] data.attached_chest_pos.x \
        if data entity @n[type=marker] data.attached_chest_pos.y \
        if data entity @n[type=marker] data.attached_chest_pos.z run return 1
# check and store the position of chest, sign on elf. if the block sign attached is not a chest, return fail
execute if block ~ ~ ~ #wall_signs[facing=west] positioned ~1 ~ ~ if block ~ ~ ~ chest facing ~-1 ~ ~ summon marker run return run function market:market_elf_initiallize
execute if block ~ ~ ~ #wall_signs[facing=east] positioned ~-1 ~ ~ if block ~ ~ ~ chest facing ~1 ~ ~ summon marker run return run function market:market_elf_initiallize
execute if block ~ ~ ~ #wall_signs[facing=north] positioned ~ ~ ~1 if block ~ ~ ~ chest facing ~ ~ ~-1 summon marker run return run function market:market_elf_initiallize
execute if block ~ ~ ~ #wall_signs[facing=south] positioned ~ ~ ~-1 if block ~ ~ ~ chest facing ~ ~ ~1 summon marker run return run function market:market_elf_initiallize

return fail

