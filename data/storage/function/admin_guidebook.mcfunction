give @p minecraft:written_book[item_name='"技術性實體編輯手冊"',written_book_content={title:"技術性實體編輯手冊",author:"Xiang990293",resolved:false,pages:[\
	{raw:["",\
		"====管理員專用手冊====\n",\
		"\n",\
		"作者:\n",\
		"    翔越風Xiang990293\n",\
		"\n",\
		"使用說明:\n",\
		"    從",{"text":"目錄","color":"#d100d1","click_event":{"action": "change_page", "page": 2}},"跳轉至對應操作\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n"]},\
	{raw:["",\
		"======操作目錄======\n",\
		"1. ",{"text":"新增物品標記","color":"#d100d1","click_event":{"action": "change_page", "page": 4}},"\n",\
		"2. ",{"text":"新增方塊標記","color":"#d100d1","click_event":{"action": "change_page", "page": 5}},"\n",\
		"3. ",{"text":"手動偵測物品","color":"#d100d1","click_event":{"action": "change_page", "page": 6}},"\n",\
		"4. ",{"text":"移除標記","color":"#d100d1","click_event":{"action": "change_page", "page": 7}},"\n",\
		"5. ",{"text":"物品分類","color":"#d100d1","click_event":{"action": "change_page", "page": 8}},"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n"]},\
	{raw:["",\
		"======操作目錄======\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n"]},\
	{raw:["",\
		"=====新增物品標記=====\n",\
		"[",{"text":"新增","color":"#1b7c30","click_event":{"action":"run_command","command":"/give @p minecraft:bat_spawn_egg[minecraft:entity_data={id:'bat',Tags:['check_item']},item_name={'text':'新增物品標記'}] 1"},"hoverEvent":{"action":"show_text","value":"說明:\n新增對應物品\n確認有物品展示框在玻璃前方\n並點擊玻璃底部"}},"|",{"text":"編輯","color":"#fec300","click_event":{"action":"change_page","page":6}},"|",{"text":"刪除","color":"#f10707","click_event":{"action":"change_page","page":7}},"]\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		{"text":"        <-返回目錄","color":"#d100d1","click_event":{"action": "change_page", "page": 2}},"\n"]},\
	{raw:["",\
		"=====新增方塊標記=====\n",\
		"[",{"text":"新增","color":"#1b7c30","click_event":{"action":"run_command","command":"/give @p minecraft:bat_spawn_egg[minecraft:entity_data={id:'bat',Tags:['check_block']},item_name={'text':'新增方塊標記'}] 1"},"hoverEvent":{"action":"show_text","value":"說明:\n新增對應方塊\n確認有方塊在上方\n並點擊玻璃底部"}},"|",{"text":"編輯","color":"#fec300","click_event":{"action":"change_page","page":6}},"|",{"text":"刪除","color":"#f10707","click_event":{"action":"change_page","page":7}},"]\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		{"text":"        <-返回目錄","color":"#d100d1","click_event":{"action": "change_page", "page": 2}},"\n"]},\
	{raw:["",\
		"=====手動偵測物品=====\n",\
		"[",{"text":"編輯","color":"#fec300","click_event":{"action":"run_command","command":"/execute if data entity @s equipment.offhand at @s run data modify entity @n[type=minecraft:marker] data.item set from entity @s equipment.offhand.id"},"hoverEvent":{"action":"show_text","value":"說明:\n編輯標記前\n需要在副手持有對應物品\n讓標記擁有該物品id"}},"]\n",\
		"\n",\
		"說明:\n",\
		"目前無法召喚\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		{"text":"        <-返回目錄","color":"#d100d1","click_event":{"action": "change_page", "page": 2}},"\n"]},\
	{raw:["",\
		"========移除標記========\n",\
		"[",{"text":"刪除","color":"#f10707","click_event":{"action":"run_command","command":"/function technical_editor:marker/kill_marker"}},"]\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n",\
		{"text":"修改標記標籤-標籤編輯器>","color":"#d100d1","click_event":{"action": "change_page", "page": 8}},"\n",\
		{"text":"        <-返回目錄","color":"#d100d1","click_event":{"action": "change_page", "page": 2}},"\n"]},\
	{raw:["",\
		"=====物品分類======\n",\
		"1. ",{"text":"建築","color":"#0044ff","click_event":{"action":"run_command","command":"/give @p minecraft:bat_spawn_egg[minecraft:entity_data={id:'bat',Tags:['building']},item_name={'text':'修改分類 建築'}] 1"}},"\n",\
		"2. ",{"text":"彩色","color":"#a200ff","click_event":{"action":"run_command","command":"/give @p minecraft:bat_spawn_egg[minecraft:entity_data={id:'bat',Tags:['colored']},item_name={'text':'修改分類 彩色'}] 1"}},"\n",\
		"3. ",{"text":"戰鬥","color":"#ff6788","click_event":{"action":"run_command","command":"/give @p minecraft:bat_spawn_egg[minecraft:entity_data={id:'bat',Tags:['combat']},item_name={'text':'修改分類 戰鬥'}] 1"}},"\n",\
		"4. ",{"text":"飲食","color":"#ff8800","click_event":{"action":"run_command","command":"/give @p minecraft:bat_spawn_egg[minecraft:entity_data={id:'bat',Tags:['edible']},item_name={'text':'修改分類 飲食'}] 1"}},"\n",\
		"5. ",{"text":"功能","color":"#ffff00","click_event":{"action":"run_command","command":"/give @p minecraft:bat_spawn_egg[minecraft:entity_data={id:'bat',Tags:['functional']},item_name={'text':'修改分類 功能'}] 1"}},"\n",\
		"6. ",{"text":"材料","color":"#fff7b0","click_event":{"action":"run_command","command":"/give @p minecraft:bat_spawn_egg[minecraft:entity_data={id:'bat',Tags:['ingredients']},item_name={'text':'修改分類 材料'}] 1"}},"\n",\
		"7. ",{"text":"自然","color":"#116800","click_event":{"action":"run_command","command":"/give @p minecraft:bat_spawn_egg[minecraft:entity_data={id:'bat',Tags:['natural']},item_name={'text':'修改分類 自然'}] 1"}},"\n",\
		"8. ",{"text":"紅石","color":"#ff0000","click_event":{"action":"run_command","command":"/give @p minecraft:bat_spawn_egg[minecraft:entity_data={id:'bat',Tags:['redstone']},item_name={'text':'修改分類 紅石'}] 1"}},"\n",\
		"9. ",{"text":"工具","color":"#666666","click_event":{"action":"run_command","command":"/give @p minecraft:bat_spawn_egg[minecraft:entity_data={id:'bat',Tags:['tools']},item_name={'text':'修改分類 工具'}] 1"}},"\n",\
		"\n",\
		"\n",\
		"\n",\
		"\n"]}\
]}]

# give @p minecraft:written_book[item_name='"技術性實體編輯手冊"',written_book_content={title:"技術性實體編輯手冊",author:"Xiang990293",resolved:false,pages:[\
# 	{raw:'["",\
# 		"頁模板-標題\n",\
# 		"\n",\
# 		"\n",\
# 		"\n",\
# 		"\n",\
# 		"\n",\
# 		"\n",\
# 		"\n",\
# 		"\n",\
# 		"\n",\
# 		"\n",\
# 		"\n",\
# 		"\n",\
# 		{"text":"        <-返回目錄","color":"#d100d1","click_event":{"action": "change_page", "page": 2}},"\n"]'},\
# 	{raw:'["",\
# 		{"text":"預留元件(之後刪除或註解)"},\
# 		{"text":"建議:\n","color":"green","click_event":{"action":"run_command","command":"/tp @p ~ ~30 ~"}},\
# 		{"text":"1. 玩家要有 100 滴血\n","hoverEvent":{"action":"show_text","contents":"/attribute @p minecraft:generic.max_health base set 100"}},\
# 		{"text":"新增","color":"#1b7c30","click_event":{"action":"run_command","command":"/function technical_editor:text_display/spawn_text_display"}},"|",{"text":"刪除","color":"#f10707","click_event":{"action":"run_command","command":"/function technical_editor:text_display/kill_text_display"}},"\n",\
# 		"\n",\
# 		"使用說明:\n",\
# 		"    從",{"text":"目錄","color":"#d100d1","click_event":{"action": "change_page", "page": 2}},"跳轉至對應實體\n",\
# 		"⬛\n",\
# 		"\n",\
# 		"\n",\
# 		"\n",\
# 		"全形最大寬度:\n",\
# 		"一二三四五六妻八九十一二\n",\
# 		"\n"]'}\
# ]}]