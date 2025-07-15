#未使用
execute at @e[tag=tphall,type=armor_stand] as @a[tag=show_particle] run particle dragon_breath ~ ~1 ~ 3 1 3 0.001 20000 force
execute at @e[tag=maintphall,type=armor_stand] as @a[tag=show_particle] run particle dragon_breath ~ ~1 ~ 3 1 3 0.001 20000 force
execute if entity @a[tag=show_particle] run schedule function teleport_hall:show_particle 0.5s replace