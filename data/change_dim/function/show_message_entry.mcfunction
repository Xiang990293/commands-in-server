advancement revoke @s from change_dim:change_dimension_check
execute if dimension overworld run function change_dim:show_message_macro {dimension:"主世界",color:"green"}
execute if dimension the_nether run function change_dim:show_message_macro {dimension:"地獄",color:"red"}
execute if dimension the_end run function change_dim:show_message_macro {dimension:"終界",color:"#FFFFAA"}