# 自定義物品損傷值嚮導

## 初始設置

首先，需要定義參數，**最大損傷值(max_damage)** 和 **目前損傷值(CustomDamage)**，即使是預設值，因為不指定時無法取得資料。
若完好無損，則兩數值應相同；若 **目前損傷值** 為0，物品直接損壞，需要指定損壞音效與粒子效果。
給最近的玩家一把擁有自定義耐久度的獄髓劍：

`give @p netherite_sword[minecraft:max_damage:300,minecraft:custom_data={CustomDamage:300}]`

設定好後，接下來是損傷值計算，若要計算當前損傷值，
