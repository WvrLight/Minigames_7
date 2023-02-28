summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["cclashDummy","cclashPice","cclashPiceNew"]}
tp @e[limit=1,sort=nearest,tag=cclashPiceNew] @s
execute as @e[limit=1,sort=nearest,tag=cclashPiceNew] at @s run tp @s ^ ^1 ^2
execute as @s[x_rotation=70..90] at @s run tp @e[limit=1,sort=nearest,tag=cclashPiceNew] @s
execute as @s[x_rotation=70..90] at @s as @e[limit=1,sort=nearest,tag=cclashPiceNew] at @s run tp @s ~ ~2 ~

playsound minecraft:item.trident.riptide_1 master @a[distance=..15] ~ ~ ~ 100 2

clear @s minecraft:carrot_on_a_stick{cclashPice:1} 1

scoreboard players set @e[tag=cclashPiceNew] cclashDummy 150
tag @e[tag=cclashPiceNew] remove cclashPiceNew

scoreboard players remove @s cclashCSpells 1