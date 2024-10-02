#關卡文字及時刷新(製作地圖時開啟)
data modify entity @e[limit=1,type=minecraft:text_display,tag=question] text set value '{"translate":"question.loading.placehold"}'
execute as @e[limit=1,type=minecraft:text_display,tag=question] run function decoration:level_index_taking