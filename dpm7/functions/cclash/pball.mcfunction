summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["cclashDummy","cclashPball","cclashPballNew"]}
tp @e[limit=1,sort=nearest,tag=cclashPballNew] @s
execute as @e[limit=1,sort=nearest,tag=cclashPballNew] at @s run tp @s ~ ~1 ~
execute as @e[limit=1,sort=nearest,tag=cclashPballNew] at @s run tp @s ^ ^ ^1

playsound minecraft:entity.creeper.primed master @a[distance=..15] ~ ~ ~ 100 2
playsound minecraft:item.firecharge.use master @a[distance=..15] ~ ~ ~ 0.3 2

clear @s minecraft:carrot_on_a_stick{cclashPball:1} 1

scoreboard players set @e[tag=cclashPballNew] cclashDummy 50
tag @e[tag=cclashPballNew] remove cclashPballNew

scoreboard players remove @s cclashCSpells 1