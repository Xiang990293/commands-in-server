advancement revoke @s from change_dim:change_dimension_check
execute if dimension overworld run function change_dim:show_message_macro {dimension_text:"主世界",color:"green",dimension:"overworld"}
execute if dimension the_nether run function change_dim:show_message_macro {dimension_text:"地獄",color:"red",dimension:"the_nether"}
execute if dimension the_end run function change_dim:show_message_macro {dimension_text:"終界",color:"#FFFFAA",dimension:"the_end"}
