summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["cclashDummy","cclashFbeam","cclashFbeamNew"]}
tp @e[tag=cclashFbeamNew,limit=1,sort=nearest] @s

execute as @e[tag=cclashFbeamNew,limit=1,sort=nearest] at @s run tp @s ^ ^ ^3
execute as @e[tag=cclashFbeamNew,limit=1,sort=nearest] at @s run tp @s ~ ~1 ~

playsound minecraft:block.beacon.power_select master @a[distance=..15] ~ ~ ~ 100 0.5

clear @s minecraft:carrot_on_a_stick{cclashFbeam:1} 1

scoreboard players set @e[tag=cclashFbeamNew] cclashDummy 150

tag @e[tag=cclashFbeamNew] remove cclashFbeamNew

scoreboard players remove @s cclashCSpells 1