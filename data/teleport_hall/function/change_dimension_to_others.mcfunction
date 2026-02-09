# the logic that the player teleport to other dimensions instead of overworld
execute \
    as @p \
    at @p \
    run clear \
        @s \
        paper[\
            minecraft:lore=[\
                {\
                    "italic":false,\
                    "text":"使用後會將站在傳送區域內的所有玩家一併傳送至傳送大廳"\
                }\
            ],\
            minecraft:item_name={\
                "italic":false,\
                "color":"aqua",\
                "text":"傳送卷軸"\
            },\
            minecraft:enchantment_glint_override=true\
        ]