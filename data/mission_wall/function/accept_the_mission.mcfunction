execute if data block ~ ~ ~ components."minecraft:custom_data"{status:"accepted"} run return run title @s actionbar "這個任務已經被接取了"
$execute if data block ~ ~ ~ components."minecraft:custom_data"{"reward_type":'no_reward'} run give @s brush[\
    minecraft:item_name={"text":"任務接受者證明"},\
    enchantment_glint_override=true,\
    item_model="minecraft:skull_banner_pattern",\
    custom_data={\
        "description":"$(description)",\
        "reward_type":"$(reward_type)",\
        "uuid":$(uuid)\
    },\
    lore=[\
        [{"text":"任務名稱：","color":"white","italic":false},"$(title)"],\
        [{"text":"任務內容：","color":"white","italic":false},"$(description)"],\
        [{"text":"獎勵類型：","color":"white","italic":false},{"translate":"mission.reward_type.$(reward_type)"}],\
        {"text":"獎勵內容? 沒有","color":"white","italic":false}\
    ]\
]

$execute if data block ~ ~ ~ components."minecraft:custom_data"{"reward_type":'xp'} run give @s brush[\
    minecraft:item_name={"text":"任務接受者證明"},\
    enchantment_glint_override=true,\
    item_model="minecraft:skull_banner_pattern",\
    custom_data={\
        "description":"$(description)",\
        "xp":"$(xp)",\
        "reward_type":"$(reward_type)",\
        "uuid":$(uuid)\
    },\
    lore=[\
        [{"text":"任務名稱：","color":"white","italic":false},"$(title)"],\
        [{"text":"任務內容：","color":"white","italic":false},"$(description)"],\
        [{"text":"獎勵類型：","color":"white","italic":false},{"translate":"mission.reward_type.$(reward_type)"}],\
        [{"text":"獎勵內容：","color":"white","italic":false},{"translate":"mission.reward_context.$(reward_type)", with:["$(xp)"]}]\
    ]\
]

$execute if data block ~ ~ ~ components."minecraft:custom_data"{"reward_type":'xp_level'} run give @s brush[\
    minecraft:item_name={"text":"任務接受者證明"},\
    enchantment_glint_override=true,\
    item_model="minecraft:skull_banner_pattern",\
    custom_data={\
        "description":"$(description)",\
        "xp_level":"$(xp_level)",\
        "reward_type":"$(reward_type)",\
        "uuid":$(uuid)\
    },\
    lore=[\
        [{"text":"任務名稱：","color":"white","italic":false},"$(title)"],\
        [{"text":"任務內容：","color":"white","italic":false},"$(description)"],\
        [{"text":"獎勵類型：","color":"white","italic":false},{"translate":"mission.reward_type.$(reward_type)"}],\
        [{"text":"獎勵內容：","color":"white","italic":false},{"translate":"mission.reward_context.$(reward_type)", with:["$(xp_level)"]}]\
    ]\
]

$execute if data block ~ ~ ~ components."minecraft:custom_data"{"reward_type":'item'} run give @s brush[\
    minecraft:item_name={"text":"任務接受者證明"},\
    enchantment_glint_override=true,\
    item_model="minecraft:skull_banner_pattern",\
    custom_data={\
        "description":"$(description)",\
        "item":$(item),\
        "reward_type":"$(reward_type)",\
        "uuid":$(uuid)\
    },\
    lore=[\
        [{"text":"任務名稱：","color":"white","italic":false},"$(title)"],\
        [{"text":"任務內容：","color":"white","italic":false},"$(description)"],\
        [{"text":"獎勵類型：","color":"white","italic":false},{"translate":"mission.reward_type.$(reward_type)"}],\
        {"text":"獎勵內容請至任務牆確認","color":"white","italic":false}\
    ]\
]

title @s actionbar "任務已接取"
data modify block ~ ~ ~ front_text.color set value "yellow"
data modify block ~ ~ ~ front_text.has_glowing_text set value true
data modify block ~ ~ ~ front_text.messages[2] set value {selector:"@p"}
data modify block ~ ~ ~ components."minecraft:custom_data".accepter set from block ~ ~ ~ front_text.messages[2].hover_event.name
data modify block ~ ~ ~ front_text.messages[2] set value "已被接取"
data modify block ~ ~ ~ components."minecraft:custom_data".status set value "accepted"
