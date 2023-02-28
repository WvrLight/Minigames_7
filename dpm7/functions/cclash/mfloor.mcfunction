summon area_effect_cloud ^ ^ ^5 {Duration:2147483647,Tags:["cclashDummy","cclashMfloor","cclashMfloorNew"]}
scoreboard players set @e[tag=cclashMfloorNew] cclashDummy 140
execute as @e[tag=cclashMfloorNew] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~ 
execute as @e[tag=cclashMfloorNew] at @s run function dpm7:cclash/levelbelow
tag @e[tag=cclashMfloorNew] remove cclashMfloorNew

summon area_effect_cloud ^ ^ ^8 {Duration:2147483647,Tags:["cclashDummy","cclashMfloor","cclashMfloorNew"]}
scoreboard players set @e[tag=cclashMfloorNew] cclashDummy 145
execute as @e[tag=cclashMfloorNew] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~ 
execute as @e[tag=cclashMfloorNew] at @s run function dpm7:cclash/levelbelow
tag @e[tag=cclashMfloorNew] remove cclashMfloorNew

summon area_effect_cloud ^ ^ ^11 {Duration:2147483647,Tags:["cclashDummy","cclashMfloor","cclashMfloorNew"]}
scoreboard players set @e[tag=cclashMfloorNew] cclashDummy 150
execute as @e[tag=cclashMfloorNew] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~ 
execute as @e[tag=cclashMfloorNew] at @s run function dpm7:cclash/levelbelow
tag @e[tag=cclashMfloorNew] remove cclashMfloorNew

summon area_effect_cloud ^ ^ ^14 {Duration:2147483647,Tags:["cclashDummy","cclashMfloor","cclashMfloorNew"]}
scoreboard players set @e[tag=cclashMfloorNew] cclashDummy 155
execute as @e[tag=cclashMfloorNew] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~ 
execute as @e[tag=cclashMfloorNew] at @s run function dpm7:cclash/levelbelow
tag @e[tag=cclashMfloorNew] remove cclashMfloorNew

summon area_effect_cloud ^ ^ ^17 {Duration:2147483647,Tags:["cclashDummy","cclashMfloor","cclashMfloorNew"]}
scoreboard players set @e[tag=cclashMfloorNew] cclashDummy 160
execute as @e[tag=cclashMfloorNew] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~ 
execute as @e[tag=cclashMfloorNew] at @s run function dpm7:cclash/levelbelow
tag @e[tag=cclashMfloorNew] remove cclashMfloorNew

summon area_effect_cloud ^ ^ ^20 {Duration:2147483647,Tags:["cclashDummy","cclashMfloor","cclashMfloorNew"]}
scoreboard players set @e[tag=cclashMfloorNew] cclashDummy 165
execute as @e[tag=cclashMfloorNew] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~ 
execute as @e[tag=cclashMfloorNew] at @s run function dpm7:cclash/levelbelow
tag @e[tag=cclashMfloorNew] remove cclashMfloorNew

summon area_effect_cloud ^ ^ ^23 {Duration:2147483647,Tags:["cclashDummy","cclashMfloor","cclashMfloorNew"]}
scoreboard players set @e[tag=cclashMfloorNew] cclashDummy 170
execute as @e[tag=cclashMfloorNew] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~ 
execute as @e[tag=cclashMfloorNew] at @s run function dpm7:cclash/levelbelow
tag @e[tag=cclashMfloorNew] remove cclashMfloorNew

summon area_effect_cloud ^ ^ ^26 {Duration:2147483647,Tags:["cclashDummy","cclashMfloor","cclashMfloorNew"]}
scoreboard players set @e[tag=cclashMfloorNew] cclashDummy 175
execute as @e[tag=cclashMfloorNew] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~ 
execute as @e[tag=cclashMfloorNew] at @s run function dpm7:cclash/levelbelow
tag @e[tag=cclashMfloorNew] remove cclashMfloorNew

summon area_effect_cloud ^ ^ ^29 {Duration:2147483647,Tags:["cclashDummy","cclashMfloor","cclashMfloorNew"]}
scoreboard players set @e[tag=cclashMfloorNew] cclashDummy 180
execute as @e[tag=cclashMfloorNew] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~ 
execute as @e[tag=cclashMfloorNew] at @s run function dpm7:cclash/levelbelow
tag @e[tag=cclashMfloorNew] remove cclashMfloorNew

scoreboard players set @s cclashMfloortime 101

playsound minecraft:entity.evoker.prepare_summon master @a[distance=..30] ~ ~ ~ 100 1.5

clear @s minecraft:carrot_on_a_stick{cclashMfloor:1} 1

scoreboard players remove @s cclashCSpells 1