summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["cclashDummy","cclashFball","cclashFballNew"]}
tp @e[limit=1,sort=nearest,tag=cclashFballNew] @s
execute as @e[limit=1,sort=nearest,tag=cclashFballNew] at @s run tp @s ^ ^1 ^1

playsound minecraft:block.glass.break master @a[distance=..15] ~ ~ ~ 1 1.5

clear @s minecraft:carrot_on_a_stick{cclashFball:1} 1

scoreboard players set @e[tag=cclashFballNew] cclashDummy 100
tag @e[tag=cclashFballNew] remove cclashFballNew

scoreboard players remove @s cclashCSpells 1