execute store result score @s custom_damage_invisi_gun run data get entity @s SelectedItem.components."minecraft:custom_data".CustomDamage 1
execute if score @s custom_damage_invisi_gun matches 4.. run scoreboard players remove @s custom_damage_invisi_gun 4
$scoreboard players add @s custom_damage_invisi_gun $(Damage)
execute store result storage invisi_assistant:custom_damage CustomDamage int 1 run scoreboard players get @s custom_damage_invisi_gun
item modify entity @s weapon.mainhand invisi_assistant:set_gun_durbility
execute store result score @s custom_damage_invisi_gun run data get entity @s SelectedItem.components."minecraft:custom_data".Damage -1
scoreboard players operation @s custom_damage_invisi_gun += 25 custom_damage_invisi_gun
execute store result storage invisi_assistant:custom_damage Durability int 1 run scoreboard players get @s custom_damage_invisi_gun
item modify entity @s weapon.mainhand invisi_assistant:durability_calculate
execute store result score @s custom_damage_invisi_gun run data get entity @s SelectedItem.components."minecraft:custom_data".Durability 1
execute if score @s custom_damage_invisi_gun matches 0 run item replace entity @s weapon.mainhand with air
execute if score @s custom_damage_invisi_gun matches 0 run playsound entity.item.break master @s ~ ~ ~ 1
execute if score @s custom_damage_invisi_gun matches 0 run particle item{item:"carrot_on_a_stick"} ~ ~1 ~ .3 .3 .3 0 25