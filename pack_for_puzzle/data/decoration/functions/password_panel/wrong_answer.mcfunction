playsound block.note_block.banjo block @p ~ ~ ~ 1 0
data modify entity @e[limit=1,tag=result,sort=nearest] text set value '{"translate":"answer.incorrect.penal"}'
schedule function decoration:password_panel/answer_reset 0.5s replace