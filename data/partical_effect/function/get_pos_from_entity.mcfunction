$data modify storage particle_effect:get_pos Pos set value $(Pos)
$say $(Pos)
execute store result storage particle_effect:get_pos x long 1 run data get storage particle_effect:get_pos Pos[0] 1000000
execute store result storage particle_effect:get_pos y long 1 run data get storage particle_effect:get_pos Pos[1] 1000000
execute store result storage particle_effect:get_pos z long 1 run data get storage particle_effect:get_pos Pos[2] 1000000
