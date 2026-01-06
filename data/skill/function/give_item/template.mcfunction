execute as PlayerNotFound at @s run \
    give @s missingno[\
        lore=[\
            {\
                "italic":false,\
                "obfuscated":true,\
                "text":"你不應該看到這段文字"\
            }\
        ],\
        item_name={\
            "italic":false,\
            "obfuscated":true,\
            "color":"red",\
            "text":"錯誤"\
        },\
        enchantments={\
            infinity:1,\
            mending:1\
        },\
        custom_data={\
            ItemOwner:"PlayerNotFound",\
            SkillType:"TypeNotFound",\
            cool_down:-1\
        }\
    ]