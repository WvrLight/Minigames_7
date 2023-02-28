summon area_effect_cloud ^ ^ ^2 {Duration:2147483647,Tags:["cclashDummy","cclashGmend","cclashGmendNew"]}
scoreboard players set @e[tag=cclashGmendNew] cclashDummy 80
execute as @e[tag=cclashGmendNew] at @s run function dpm7:cclash/levelbelow
execute as @e[tag=cclashGmendNew] at @s run tp @s ~ ~1 ~
tag @e[tag=cclashGmendNew] remove cclashGmendNew

playsound minecraft:entity.evoker.prepare_summon master @a[distance=..15] ~ ~ ~ 100 1.5

clear @s minecraft:carrot_on_a_stick{cclashGmend:1} 1

scoreboard players remove @s cclashCSpells 1