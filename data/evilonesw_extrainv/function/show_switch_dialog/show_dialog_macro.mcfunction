dialog show @s {\
"type": "minecraft:multi_action",\
"title": "切換背包",\
"external_title": "切換到額外的背包",\
    "body": {\
        "type": "minecraft:item",\
        "item": {\
            "id": "minecraft:white_shulker_box",\
            "components": {\
                "minecraft:custom_name": "目前背包",\
                "minecraft:item_name": "目前背包"\
            },\
            "count": 1\
        },\
        "description": "目前背包：",\
        "show_decorations": true,\
        "show_tooltip": true\
    },\
    "columns": 10,\
    "actions": [\
        {\
            "label": "1",\
            "width": 20\
        },\
        {\
            "label": "2",\
            "width": 20\
        },\
        {\
            "label": "3",\
            "width": 20\
        },\
        {\
            "label": "4",\
            "width": 20\
        },\
        {\
            "label": "5",\
            "width": 20\
        },\
        {\
            "label": "6",\
            "width": 20\
        },\
        {\
            "label": "7",\
            "width": 20\
        },\
        {\
            "label": "8",\
            "width": 20\
        },\
        {\
            "label": "9",\
            "width": 20\
        },\
        {\
            "label": "10",\
            "width": 20\
        }\
    ]\
}