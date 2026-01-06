$dialog show @p {\
    type:confirmation,\
    title:"收取營收",\
    yes:{\
        label:"收取",\
        type:run_command,\
        command:"summon item ~ ~ ~ {Item:$(key)}"\
    },\
    no:{\
        label:"取消",\
        type:run_command,\
        command:"title @p actionbar "領取營收已取消"\
    }\
}