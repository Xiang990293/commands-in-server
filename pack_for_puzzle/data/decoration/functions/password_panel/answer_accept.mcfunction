$tag @e[tag=center_text_tagger,type=item_display] add $(submit_answer)
playsound block.note_block.bell block @p
data modify entity @e[limit=1,tag=result,sort=nearest] text set value '{"translate":"answer.correct.penal"}'
schedule function decoration:password_panel/answer_reset 0.5s replace

tag @e[type=interaction,distance=..5,tag=left_door] add unlocked
tag @e[type=interaction,distance=..5,tag=left_door] add auto_trigger

tag @e[type=interaction,distance=..5,tag=right_door] add unlocked
tag @e[type=interaction,distance=..5,tag=right_door] add auto_trigger

function decoration:left_door/toggle_left_door
function decoration:right_door/toggle_right_door