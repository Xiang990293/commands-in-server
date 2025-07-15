# deleting scoreboard and disabling itself
tellraw @a [{"text":"Extra inventory datapack unloaded\n","color":"red"},{"text":"To completely uninstall just delete this datapack from your datapack folder.  To reinstall simply use /datapack enable file/Evilonesw_extrainv and /reload\n","color":"dark_blue"},{"text":"Thanks heaps for trying out this datapack hope you enjoyed it. Feel free to message me if you have any suggestions or want to report bugs\n","color":"dark_green"},{"text":"My planet minecraft account","color":"dark_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Evilonesw planet minecraft account link"}]},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/evilonesw/"}}]

scoreboard objectives remove evswextinv_jump
scoreboard objectives remove evswextinv_sneak
scoreboard objectives remove evswextinv_trig
scoreboard objectives remove evswextinv_lag

datapack disable "file/Evilonesw_extrainv"