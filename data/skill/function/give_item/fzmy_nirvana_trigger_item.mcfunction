execute as FzMY at @s run \
    give @s iron_ingot[\
        lore=[\
            {\
                "italic":false,\
                "text":"使用後會獲得10秒抗性V，並消除所有效果，冷卻時間80秒"\
            }\
        ],\
        item_name={\
            "italic":false,\
            "color":"red",\
            "text":"惡食"\
        },\
        enchantments={\
            infinity:1,\
            mending:1\
        },\
        custom_data={\
            ItemOwner:"fzmy",\
            SkillType:"nirvana",\
            cool_down:1600\
        }\
    ]