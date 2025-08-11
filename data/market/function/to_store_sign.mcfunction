# set sign customdata.special_sign_type to "store"
data modify block ~ ~ ~ components."minecraft:custom_data".special_sign_type set value "store"
# set the sign clickable, notice that front_text.messages[0] needs to be "abc" like instead of {text:"abc"} like, or the sign will broken (shows weirdly)
data modify block ~ ~ ~ front_text.messages[0] set value {\
    nbt:"front_text.messages[0]",\
    block:"~ ~ ~",\
    color:"#00e1ff",\
    bold:true,\
    click_event:{\
        action:"run_command",\
        command:"function market:sign_right_clicked/store_sign"\
    }\
}