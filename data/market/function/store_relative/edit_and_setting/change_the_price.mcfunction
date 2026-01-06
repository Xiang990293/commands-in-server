dialog show @p {\
    type: confirmation,\
    title: "更改價格",\
    after_action: "close",\
    body: [\
        {\
            "type": "plain_message",\
            "contents": {"text": "是否要回收營收？"}\
        }\,
        {\
            "type": "item",\
            "item": $(earns),\
            "description": ""\
        }\
    ],\
    "inputs": [\
    ],\
    "columns": 1,\
    "no": {\
        "label": "不要",\
        "tooltip": "繼續存放",\
        "action": {\
            "type": "run_command",\
            "command": "give @s air"\
        }\
    },\
    "yes": {\
        "label": "好的",\
        "tooltip": "接受鑽石",\
        "action": {\
            "type": "run_command",\
            "command": "give @s $(currency) $(amount)"\
        }\
    }\
}