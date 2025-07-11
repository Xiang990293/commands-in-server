execute summon marker run data modify storage mission_wall:request uuid set from entity @s UUID
kill @n[type=marker,distance=..0.5]
$execute if data storage mission_wall:request {"reward_type":'no_reward'} run give @s pale_oak_sign[\
    block_entity_data={\
        id:"minecraft:sign",\
        front_text:{\
            color:"black",\
            has_glowing_text:0b,\
            messages:[\
                {click_event:{action:"run_command",command:"function mission_wall:interact_to_mission"},text:"[任務]"},\
                "$(title)",\
                "",\
                {"selector":"@p"}\
            ]\
        }\
    },\
    custom_data={\
        "description":"$(description)",\
        "xp":"$(xp)",\
        "xp_level":"$(xp_level)",\
        "item":$(item),\
        "reward_type":"$(reward_type)",\
        "uuid":$(uuid),\
        "title": "$(title)",\
        "announcer":$(announcer),\
        "status":"waiting"\
    },\
    can_place_on={blocks:["minecraft:acacia_planks"]},\
    lore=[\
        [{"text":"任務名稱：","color":"white","italic":false},"$(title)"],\
        [{"text":"任務內容：","color":"white","italic":false},"$(description)"],\
        [{"text":"獎勵類型：","color":"white","italic":false},{"translate":"mission.reward_type.$(reward_type)"}]\
    ]\
]

$execute if data storage mission_wall:request {"reward_type":'xp'} run give @s pale_oak_sign[\
    block_entity_data={\
        id:"minecraft:sign",\
        front_text:{\
            color:"black",\
            has_glowing_text:0b,\
            messages:[\
                {click_event:{action:"run_command",command:"function mission_wall:interact_to_mission"},text:"[任務]"},\
                "$(title)",\
                "",\
                {"selector":"@p"}\
            ]\
        }\
    },\
    custom_data={\
        "description":"$(description)",\
        "xp":"$(xp)",\
        "xp_level":"$(xp_level)",\
        "item":$(item),\
        "reward_type":"$(reward_type)",\
        "uuid":$(uuid),\
        "title": "$(title)",\
        "announcer":$(announcer),\
        "status":"waiting"\
    },\
    can_place_on={blocks:["minecraft:acacia_planks"]},\
    lore=[\
        [{"text":"任務名稱：","color":"white","italic":false},"$(title)"],\
        [{"text":"任務內容：","color":"white","italic":false},"$(description)"],\
        [{"text":"獎勵類型：","color":"white","italic":false},{"translate":"mission.reward_type.$(reward_type)"}]\
    ]\
]

$execute if data storage mission_wall:request {"reward_type":'xp_level'} run give @s pale_oak_sign[\
    block_entity_data={\
        id:"minecraft:sign",\
        front_text:{\
            color:"black",\
            has_glowing_text:0b,\
            messages:[\
                {click_event:{action:"run_command",command:"function mission_wall:interact_to_mission"},text:"[任務]"},\
                "$(title)",\
                "",\
                {"selector":"@p"}\
            ]\
        }\
    },\
    custom_data={\
        "description":"$(description)",\
        "xp":"$(xp)",\
        "xp_level":"$(xp_level)",\
        "item":$(item),\
        "reward_type":"$(reward_type)",\
        "uuid":$(uuid),\
        "title": "$(title)",\
        "announcer":$(announcer),\
        "status":"waiting"\
    },\
    can_place_on={blocks:["minecraft:acacia_planks"]},\
    lore=[\
        [{"text":"任務名稱：","color":"white","italic":false},"$(title)"],\
        [{"text":"任務內容：","color":"white","italic":false},"$(description)"],\
        [{"text":"獎勵類型：","color":"white","italic":false},{"translate":"mission.reward_type.$(reward_type)"}]\
    ]\
]

$execute if data storage mission_wall:request {"reward_type":'item'} run give @s pale_oak_sign[\
    block_entity_data={\
        id:"minecraft:sign",\
        front_text:{\
            color:"black",\
            has_glowing_text:0b,\
            messages:[\
                {click_event:{action:"run_command",command:"function mission_wall:interact_to_mission"},text:"[任務]"},\
                "$(title)",\
                "",\
                {"selector":"@p"}\
            ]\
        }\
    },\
    custom_data={\
        "description":"$(description)",\
        "xp":"$(xp)",\
        "xp_level":"$(xp_level)",\
        "item":$(item),\
        "reward_type":"$(reward_type)",\
        "uuid":$(uuid),\
        "title": "$(title)",\
        "announcer":$(announcer),\
        "status":"waiting"\
    },\
    can_place_on={blocks:["minecraft:acacia_planks"]},\
    lore=[\
        [{"text":"任務名稱：","color":"white","italic":false},"$(title)"],\
        [{"text":"任務內容：","color":"white","italic":false},"$(description)"],\
        [{"text":"獎勵類型：","color":"white","italic":false},{"translate":"mission.reward_type.$(reward_type)"}]\
    ]\
]

$give @s brush[minecraft:item_name={"text":"任務發佈者證明"},minecraft:custom_data={reward_type:"$(reward_type)",title:"$(title)",description:"$(description)",announcer:$(announcer),uuid:$(uuid)},item_model="minecraft:creeper_banner_pattern",enchantment_glint_override=true,lore=[[{"text":"任務名稱：","color":"white","italic":false},"$(title)"],[{"text":"任務內容：","color":"white","italic":false},"$(description)"],[{"text":"獎勵類型：","color":"white","italic":false},{"translate":"mission.reward_type.$(reward_type)"}]]]

# reset the status of form slot and rewards slot
data modify entity @n[type=item_display,tag=mission_application_form] item set value {id:"minecraft:glass",count:1b}
data modify entity @n[type=item_display,tag=rewards_slot] item set value {count:1,id:"minecraft:glass"}
data modify entity @n[type=item_display,tag=mission_application_form] data.hasItem set value 0b
data modify entity @n[type=item_display,tag=rewards_slot] data.hasItem set value 0b
data remove entity @n[type=interaction,tag=rewards_slot] data
data modify storage mission_wall:request xp set value ""
data modify storage mission_wall:request xp_level set value ""
data modify storage mission_wall:request item set value {action:"show_item",id:"minecraft:glass",count:1b}
data remove storage mission_wall:request no_reward
data remove storage mission_wall:request announcer
data remove storage mission_wall:request reward_type
data remove storage mission_wall:request description
data remove storage mission_wall:request title