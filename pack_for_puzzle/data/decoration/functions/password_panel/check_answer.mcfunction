$execute store success storage decoration:temp_submit if_correct int 1 run tag @e[tag=center_text_tagger,type=item_display] remove $(submit_answer)
execute if data storage decoration:temp_submit {if_correct:1} run function decoration:password_panel/answer_accept with storage decoration:temp_submit
execute unless data storage decoration:temp_submit {if_correct:1} run function decoration:password_panel/wrong_answer