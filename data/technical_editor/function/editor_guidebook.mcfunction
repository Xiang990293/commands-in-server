give @p minecraft:written_book[item_name='"技術性實體編輯手冊"',written_book_content={title:"技術性實體編輯手冊",author:"Xiang990293",resolved:false,pages:[\
	{raw:'["",\
		"==技術性實體編輯手冊==\\n",\
		"\\n",\
		"作者:\\n",\
		"    翔越風Xiang990293\\n",\
		"\\n",\
		"使用說明:\\n",\
		"    從",{"text":"目錄","color":"#d100d1","clickEvent":{"action": "change_page", "value": "2"}},"跳轉至對應實體\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n"]'},\
	{raw:'["",\
		"======實體目錄======\\n",\
		"1. ",{"text":"文字展示實體","color":"#d100d1","clickEvent":{"action": "change_page", "value": "4"}},"\\n",\
		"2. ",{"text":"物品展示實體","color":"#d100d1","clickEvent":{"action": "change_page", "value": "5"}},"\\n",\
		"3. ",{"text":"方塊展示實體","color":"#d100d1","clickEvent":{"action": "change_page", "value": "6"}},"\\n",\
		"4. ",{"text":"標記","color":"#d100d1","clickEvent":{"action": "change_page", "value": "7"}},"\\n",\
		"5. ",{"text":"互動實體","color":"#d100d1","clickEvent":{"action": "change_page", "value": "8"}},"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n"]'},\
	{raw:'["",\
		"=====編輯器目錄=====\\n",\
		"1. ",{"text":"標籤編輯器","color":"#d100d1","clickEvent":{"action": "change_page", "value": "9"}},"\\n",\
		"2. ",{"text":"文字編輯器","color":"#d100d1","clickEvent":{"action": "change_page", "value": "10"}},"\\n",\
		"3. ",{"text":"展示實體編輯器","color":"#d100d1","clickEvent":{"action": "change_page", "value": "11"}},"\\n",\
		"4. ",{"text":"文字展示實體編輯器","color":"#d100d1","clickEvent":{"action": "change_page", "value": "12"}},"\\n",\
		"5. ",{"text":"方塊展示實體編輯器","color":"#d100d1","clickEvent":{"action": "change_page", "value": "13"}},"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		{"text":":)","color":"#114514","clickEvent":{"action": "run_command","value": "/advancement grant @s only technical_editor:ahhh"}},"\\n"]'},\
	{raw:'["",\
		"=====文字展示實體=====\\n",\
		"[",{"text":"新增","color":"#1b7c30","clickEvent":{"action":"run_command","value":"/function technical_editor:text_display/spawn_text_display"},"hoverEvent":{"action":"show_text","value":"說明:\\n新增展示實體前\\n需要重新命名物品\\n讓召喚的展示實體顯示文字內容"}},"|",{"text":"刪除","color":"#f10707","clickEvent":{"action":"run_command","value":"/function technical_editor:text_display/kill_text_display"}},"]\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"文字編輯:\\n",\
		"目前不支援文字編輯與修改\\n",\
		"\\n",\
		"\\n",\
		{"text":"        <-返回目錄","color":"#d100d1","clickEvent":{"action": "change_page", "value": "2"}},"\\n"]'},\
	{raw:'["",\
		"=====物品展示實體=====\\n",\
		"[",{"text":"新增","color":"#1b7c30","clickEvent":{"action":"run_command","value":"/function technical_editor:item_display/spawn_item_display"},"hoverEvent":{"action":"show_text","value":"說明:\\n新增展示實體前\\n需要把展示物品拿在副手\\n讓召喚的展示實體\\n顯示物品內容"}},"|",{"text":"編輯","color":"#fec300","clickEvent":{"action":"run_command","value":"/function technical_editor:item_display/modify_item_display"},"hoverEvent":{"action":"show_text","value":"說明:\\n編輯展示實體前\\n需要把展示物品拿在副手\\n讓召喚的展示實體\\n顯示物品內容"}},"|",{"text":"刪除","color":"#f10707","clickEvent":{"action":"run_command","value":"/function technical_editor:item_display/kill_item_display"}},"]\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		{"text":"        <-返回目錄","color":"#d100d1","clickEvent":{"action": "change_page", "value": "2"}},"\\n"]'},\
	{raw:'["",\
		"=====方塊展示實體=====\\n",\
		"[","]\\n",\
		"\\n",\
		"說明:\\n",\
		"目前無法召喚\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		{"text":"        <-返回目錄","color":"#d100d1","clickEvent":{"action": "change_page", "value": "2"}},"\\n"]'},\
	{raw:'["",\
		"========標記========\\n",\
		"[",{"text":"新增","color":"#1b7c30","clickEvent":{"action":"run_command","value":"/function technical_editor:marker/spawn_marker"},"hoverEvent":{"action":"show_text","value":"說明:\\n新增標記前\\n需要重新命名物品\\n讓召喚的標記擁有標籤\\n方便分類管理"}},"|",{"text":"刪除","color":"#f10707","clickEvent":{"action":"run_command","value":"/function technical_editor:marker/kill_marker"}},"]\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		{"text":"修改標記標籤-標籤編輯器>","color":"#d100d1","clickEvent":{"action": "change_page", "value": "8"}},"\\n",\
		{"text":"        <-返回目錄","color":"#d100d1","clickEvent":{"action": "change_page", "value": "2"}},"\\n"]'},\
	{raw:'["",\
		"======互動實體======\\n",\
		"[","]\\n",\
		"\\n",\
		"說明:\\n",\
		"目前無法召喚\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		{"text":"        <-返回目錄","color":"#d100d1","clickEvent":{"action": "change_page", "value": "2"}},"\\n"]'},\
	{raw:'["",\
		"=====標籤編輯器=====\\n",\
		"技術性實體用:[",{"text":"新增","color":"#1b7c30","clickEvent":{"action":"run_command","value":"/function technical_editor:tag_editor/give_tag_technical"},"hoverEvent":{"action":"show_text","value":"說明:\\n新增標籤前需重新命名物品\\n指定欲新增的標籤"}},"|",{"text":"刪除","color":"#f10707","clickEvent":{"action":"run_command","value":"/function technical_editor:tag_editor/remove_tag_technical"},"hoverEvent":{"action":"show_text","value":"說明:\\n刪除標籤前需重新命名物品\\n指定欲刪除的標籤"}},"]\\n",\
		"通用:[",{"text":"新增","color":"#1b7c30","clickEvent":{"action":"run_command","value":"/function technical_editor:tag_editor/give_tag_general"},"hoverEvent":{"action":"show_text","value":"說明:\\n新增標籤前需重新命名物品\\n指定欲新增的標籤"}},"|",{"text":"刪除","color":"#f10707","clickEvent":{"action":"run_command","value":"/function technical_editor:tag_editor/remove_tag_general"},"hoverEvent":{"action":"show_text","value":"說明:\\n刪除標籤前需重新命名物品\\n指定欲刪除的標籤"}},"]\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		{"text":"        <-返回目錄","color":"#d100d1","clickEvent":{"action": "change_page", "value": "2"}},"\\n"]'},\
	{raw:'["",\
		"=====文字編輯器=====\\n",\
		"文字類型:[",{"text":"新增","color":"#1b7c30","clickEvent":{"action":"run_command","value":"/function technical_editor:tag_editor/give_tag_technical"},"hoverEvent":{"action":"show_text","value":"說明:\\n新增標籤前需重新命名物品\\n指定欲新增的標籤"}},"|",{"text":"刪除","color":"#f10707","clickEvent":{"action":"run_command","value":"/function technical_editor:tag_editor/remove_tag_technical"},"hoverEvent":{"action":"show_text","value":"說明:\\n刪除標籤前需重新命名物品\\n指定欲刪除的標籤"}},"]\\n",\
		"通用:[",{"text":"新增","color":"#1b7c30","clickEvent":{"action":"run_command","value":"/function technical_editor:tag_editor/give_tag_general"},"hoverEvent":{"action":"show_text","value":"說明:\\n新增標籤前需重新命名物品\\n指定欲新增的標籤"}},"|",{"text":"刪除","color":"#f10707","clickEvent":{"action":"run_command","value":"/function technical_editor:tag_editor/remove_tag_general"},"hoverEvent":{"action":"show_text","value":"說明:\\n刪除標籤前需重新命名物品\\n指定欲刪除的標籤"}},"]\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		"\\n",\
		{"text":"        <-返回目錄","color":"#d100d1","clickEvent":{"action": "change_page", "value": "2"}},"\\n"]'}\
]},custom_data={\
	block_display_setting:{\
		\
	},\
	text_display_setting:{\
		alignment:"center",\
		background:1073741824,\
		default_background:0b,\
		line_width:200,\
		see_through:0b,\
		shadow:0b,\
		text_opacity:-1b\
	},\
	general_display_setting:{\
		billboard:"center",\
		brightness:{sky:0,block:0},\
		glow_color_override:-1,\
		height:0.0f,\
		width:0.0f,\
		shadow_radius:0.0f,\
		shadow_strength:1.0f,\
		start_interpolation:0,\
		interpolation_duration:0,\
		teleport_duration:0,\
		transformation:{\
			left_rotation:[0.0f,0.0f,0.0f,1.0f],\
			right_rotation:[0.0f,0.0f,0.0f,1.0f],\
			scale:[1.0f,1.0f,1.0f],\
			translation:[0.0f,0.0f,0.0f]\
		},\
		view_range:1.0f\
	},\
	text_setting:{\
		type:"text",\
		text:'""',\
	},\
	color_setting:{\
		mode:"id",\
		value:"",\
	}\
}]

# give @p minecraft:written_book[item_name='"技術性實體編輯手冊"',written_book_content={title:"技術性實體編輯手冊",author:"Xiang990293",resolved:false,pages:[\
# 	{raw:'["",\
# 		"頁模板-標題\\n",\
# 		"\\n",\
# 		"\\n",\
# 		"\\n",\
# 		"\\n",\
# 		"\\n",\
# 		"\\n",\
# 		"\\n",\
# 		"\\n",\
# 		"\\n",\
# 		"\\n",\
# 		"\\n",\
# 		"\\n",\
# 		{"text":"        <-返回目錄","color":"#d100d1","clickEvent":{"action": "change_page", "value": "2"}},"\\n"]'},\
# 	{raw:'["",\
# 		{"text":"預留元件(之後刪除或註解)"},\
# 		{"text":"建議:\\n","color":"green","clickEvent":{"action":"run_command","value":"/tp @p ~ ~30 ~"}},\
# 		{"text":"1. 玩家要有 100 滴血\\n","hoverEvent":{"action":"show_text","contents":"/attribute @p minecraft:generic.max_health base set 100"}},\
# 		{"text":"新增","color":"#1b7c30","clickEvent":{"action":"run_command","value":"/function technical_editor:text_display/spawn_text_display"}},"|",{"text":"刪除","color":"#f10707","clickEvent":{"action":"run_command","value":"/function technical_editor:text_display/kill_text_display"}},"\\n",\
# 		"\\n",\
# 		"使用說明:\\n",\
# 		"    從",{"text":"目錄","color":"#d100d1","clickEvent":{"action": "change_page", "value": "2"}},"跳轉至對應實體\\n",\
# 		"⬛\\n",\
# 		"\\n",\
# 		"\\n",\
# 		"\\n",\
# 		"全形最大寬度:\\n",\
# 		"一二三四五六妻八九十一二\\n",\
# 		"\\n"]'}\
# ]}]