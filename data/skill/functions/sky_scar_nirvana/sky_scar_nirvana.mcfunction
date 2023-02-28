#生成閃電的苦力怕、爆炸範圍9、已點燃、無敵、爆炸時間10tick
effect give sky_scar resistance 1 5
execute at sky_scar as @a[sort=nearest,limit=3,distance=1..] at @s run summon creeper ~ ~ ~ {Invulnerable:1b,Fuse:0s,ignited:1b,ExplosionRadius:5b,powered:1b}
execute if score world mobgriefing matches 1 run gamerule mobGriefing true
execute if score world mobgriefing matches 0 run gamerule mobGriefing false