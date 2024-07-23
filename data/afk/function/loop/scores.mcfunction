# ---------- 時間計算 ----------
##========== 增加時間 ==========
execute as @a run scoreboard players add @s[scores={s1=0,s2=0,s3=0,s4=0,t1=0,t2=0,t3=0,t4=0,t5=0,w1=0,w2=0,w3=0,m1=0,m2=0,m3=0}] afktimer 1
##========== 重設時間 ==========
execute as @a run scoreboard players set @s[scores={s1=1..}] afktimer 0
execute as @a run scoreboard players set @s[scores={s2=1..}] afktimer 0
execute as @a run scoreboard players set @s[scores={s3=1..}] afktimer 0
execute as @a run scoreboard players set @s[scores={s4=1..}] afktimer 0
execute as @a run scoreboard players set @s[scores={t1=1..}] afktimer 0
execute as @a run scoreboard players set @s[scores={t2=1..}] afktimer 0
execute as @a run scoreboard players set @s[scores={t3=1..}] afktimer 0
execute as @a run scoreboard players set @s[scores={t4=1..}] afktimer 0
execute as @a run scoreboard players set @s[scores={t5=1..}] afktimer 0
execute as @a run scoreboard players set @s[scores={w1=1..}] afktimer 0
execute as @a run scoreboard players set @s[scores={w2=1..}] afktimer 0
execute as @a run scoreboard players set @s[scores={w3=1..}] afktimer 0
execute as @a run scoreboard players set @s[scores={m1=1..}] afktimer 0
execute as @a run scoreboard players set @s[scores={m2=1..}] afktimer 0
execute as @a run scoreboard players set @s[scores={m3=1..}] afktimer 0
# ---------- 動作計算 ----------
##========== 基本動作 ==========
###蹲行
execute as @a run scoreboard players set @s[scores={s1=1..}] s1 0
###跳躍*
execute as @a run scoreboard players set @s[scores={s2=1..}] s2 0
###奔跑
execute as @a run scoreboard players set @s[scores={s3=1..}] s3 0
###步行
execute as @a run scoreboard players set @s[scores={s4=1..}] s4 0
##========== 交通公具 ==========
###鞘翅
execute as @a run scoreboard players set @s[scores={t1=1..}] t1 0
###木船
execute as @a run scoreboard players set @s[scores={t2=1..}] t2 0
###駿馬
execute as @a run scoreboard players set @s[scores={t3=1..}] t3 0
###礦車
execute as @a run scoreboard players set @s[scores={t4=1..}] t4 0
###肥豬
execute as @a run scoreboard players set @s[scores={t5=1..}] t5 0
##========== 水中游走 ==========
###游泳
execute as @a run scoreboard players set @s[scores={w1=1..}] w1 0
###水上飄
execute as @a run scoreboard players set @s[scores={w2=1..}] w2 0
###深海行
execute as @a run scoreboard players set @s[scores={w3=1..}] w3 0
##========== 特殊動作 ==========
###攀爬
execute as @a run scoreboard players set @s[scores={m1=1..}] m1 0
###墜落
execute as @a run scoreboard players set @s[scores={m2=1..}] m2 0
###飛行
execute as @a run scoreboard players set @s[scores={m3=1..}] m3 0
##========== 重設負值 ==========
execute as @a run scoreboard players set @s[scores={s1=..0}] s1 0
execute as @a run scoreboard players set @s[scores={s2=..0}] s2 0
execute as @a run scoreboard players set @s[scores={s3=..0}] s3 0
execute as @a run scoreboard players set @s[scores={s4=..0}] s4 0
execute as @a run scoreboard players set @s[scores={t1=..0}] t1 0
execute as @a run scoreboard players set @s[scores={t2=..0}] t2 0
execute as @a run scoreboard players set @s[scores={t3=..0}] t3 0
execute as @a run scoreboard players set @s[scores={t4=..0}] t4 0
execute as @a run scoreboard players set @s[scores={t5=..0}] t5 0
execute as @a run scoreboard players set @s[scores={w1=..0}] w1 0
execute as @a run scoreboard players set @s[scores={w2=..0}] w2 0
execute as @a run scoreboard players set @s[scores={w3=..0}] w3 0
execute as @a run scoreboard players set @s[scores={m1=..0}] m1 0
execute as @a run scoreboard players set @s[scores={m2=..0}] m2 0
execute as @a run scoreboard players set @s[scores={m3=..0}] m3 0
##========== 重製分數 ===========
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s afktimer 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s s1 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s s2 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s s3 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s s4 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s t1 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s t2 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s t3 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s t4 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s t5 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s w1 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s w2 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s w3 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s m1 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s m2 0
execute as @a unless score @s afktimer matches 1.. run scoreboard players set @s m3 0