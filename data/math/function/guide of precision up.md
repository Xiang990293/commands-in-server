# 計算精準度提升嚮導

## 提取資料 + 存放
如果要從實體、方塊實體提出資料
> execute run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run return run...

痾...抱歉，放錯了
> execute store result storage math:precision_up long long 1 run data get <block|entity|storage> <pos|entity|storage id> <path> 1000000

這裡，將run後面的回傳值，儲存到特定儲存庫(storage)，名為 math:precision_up
後面的第一個 long 是存放在math:precision_up 底下的 long 標籤
後面的第二個 long 是存放的資料類型。

對於不同巨集函數，需要儲存在不同名稱的標籤
例如 math:addition 需要傳入包含標籤 a 和 b 的復合標籤
所以假設要將玩家 player_name 的 x座標值(Pos[0]) 和 y座標值(Pos[1]) 相加，但由於不是整數，無法直接傳入函數
所以需要對參數預處理:

a=1000000 * Pos[0]
> execute store result storage math:addition_precision_up a long 1 run data get entity player_name Pos[0] 1000000

b=1000000 * Pos[1]
> execute store result storage math:addition_precision_up b long 1 run data get entity player_name Pos[1] 1000000

巨集函數 math:addition 回傳 a+b 的結果
> return run function math:addition with storage math:addition_precision_up

## 返回值最後處理 (不建議在運算過程中使用，除非需要運算中利用此值)
由於預處理時，將傳入值放大，因此最後需要縮小回原本的尺度

a=1000000 * Pos[0]
> execute store result storage math:addition_precision_up a long 1 run data get entity player_name Pos[0] 1000000

b=1000000 * Pos[1]
> execute store result storage math:addition_precision_up b long 1 run data get entity player_name Pos[1] 1000000

巨集函數 math:addition 回傳 a+b 的結果
> execute store result storage math:addition_precision_up result float 0.000001 run function math:addition with storage math:addition_precision_up

由於回傳值必須為整數，無法回傳浮點數，所以這裡的return要碼回傳成功碼，要碼不回傳(void)，或是等計算完整個過程後再處理，如此可以返回整數至下一個函數

巨集函數 math:addition 回傳 a+b 的結果
> return run function math:addition with storage math:addition_precision_up 
