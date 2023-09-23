#判斷背包空位用的東東(是監測變化，只要有36格以上欄位，就會觸發teleport_hall:inventory_empty_space_check進度)
data modify storage foo:bar Items set from entity @s Inventory
data remove storage foo:bar Items[{Slot:-106b}]
data remove storage foo:bar Items[{Slot:103b}]
data remove storage foo:bar Items[{Slot:102b}]
data remove storage foo:bar Items[{Slot:101b}]
data remove storage foo:bar Items[{Slot:100b}]
execute store result score @s inventory_space if data storage foo:bar Items[]
# execute if score @s inventory_space matches 36 run 

#進入傳送殿堂 10格以內 卷軸
#離開傳送殿堂 卷軸回收
#傳送區域 9格以內傳送至傳送大廳
#傳送殿堂 拿卷軸後立即傳送至他處 卷軸不回收 須經10~11格區間