advancement revoke @s from change_dim:change_dimension_check

# if player tp to other dimension, remove tped tag.
tag @s remove tped
# change to research only inventory
# execute unless dimension overworld unless dimension the_nether unless dimension the_end run trigger evswextinv_trig set 2
execute \
    unless dimension minecraft:overworld \
    unless dimension minecraft:the_nether \
    unless dimension minecraft:the_end \
    unless dimension multi_world:ancient_end run return run function change_dim:show_message_macro {dimension_text:"研究維度",color:"light_purple",dimension:"undef"}

# change to survival only inventory
# show the dimension name and change team (name tag color)
# execute if dimension overworld run trigger evswextinv_trig set 1
execute if dimension overworld run return run function change_dim:show_message_macro {dimension_text:"主世界",color:"green",dimension:"overworld"}
# execute if dimension the_nether run trigger evswextinv_trig set 1
execute if dimension the_nether run return run function change_dim:show_message_macro {dimension_text:"地獄",color:"red",dimension:"the_nether"}
# execute if dimension the_end run trigger evswextinv_trig set 1
execute if dimension the_end run return run function change_dim:show_message_macro {dimension_text:"終界",color:"#FFFFAA",dimension:"the_end"}
# execute if dimension multi_world:ancient_end run trigger evswextinv_trig set 1
execute if dimension multi_world:ancient_end run return run function change_dim:show_message_macro {dimension_text:"遠古終界",color:"gold",dimension:"the_end"}



