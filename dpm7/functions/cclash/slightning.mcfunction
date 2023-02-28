summon area_effect_cloud ^ ^ ^6 {Duration:2147483647,Tags:["cclashDummy","cclashSlightning","cclashSlightningNew"]}
scoreboard players set @e[tag=cclashSlightningNew] cclashDummy 65
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelbelow	
tag @e[tag=cclashSlightningNew] remove cclashSlightningNew

summon area_effect_cloud ^ ^ ^12 {Duration:2147483647,Tags:["cclashDummy","cclashSlightning","cclashSlightningNew"]}
scoreboard players set @e[tag=cclashSlightningNew] cclashDummy 60
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelbelow	
tag @e[tag=cclashSlightningNew] remove cclashSlightningNew

summon area_effect_cloud ^ ^ ^18 {Duration:2147483647,Tags:["cclashDummy","cclashSlightning","cclashSlightningNew"]}
scoreboard players set @e[tag=cclashSlightningNew] cclashDummy 55
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelbelow	
tag @e[tag=cclashSlightningNew] remove cclashSlightningNew

summon area_effect_cloud ^ ^ ^24 {Duration:2147483647,Tags:["cclashDummy","cclashSlightning","cclashSlightningNew"]}
scoreboard players set @e[tag=cclashSlightningNew] cclashDummy 50
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelbelow	
tag @e[tag=cclashSlightningNew] remove cclashSlightningNew

summon area_effect_cloud ^ ^ ^30 {Duration:2147483647,Tags:["cclashDummy","cclashSlightning","cclashSlightningNew"]}
scoreboard players set @e[tag=cclashSlightningNew] cclashDummy 45
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelbelow
tag @e[tag=cclashSlightningNew] remove cclashSlightningNew

summon area_effect_cloud ^ ^ ^36 {Duration:2147483647,Tags:["cclashDummy","cclashSlightning","cclashSlightningNew"]}
scoreboard players set @e[tag=cclashSlightningNew] cclashDummy 40
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelbelow	
tag @e[tag=cclashSlightningNew] remove cclashSlightningNew

summon area_effect_cloud ^ ^ ^42 {Duration:2147483647,Tags:["cclashDummy","cclashSlightning","cclashSlightningNew"]}
scoreboard players set @e[tag=cclashSlightningNew] cclashDummy 35
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelbelow
tag @e[tag=cclashSlightningNew] remove cclashSlightningNew

summon area_effect_cloud ^ ^ ^48 {Duration:2147483647,Tags:["cclashDummy","cclashSlightning","cclashSlightningNew"]}
scoreboard players set @e[tag=cclashSlightningNew] cclashDummy 30 
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashSlightningNew] at @s run function dpm7:cclash/levelbelow	
tag @e[tag=cclashSlightningNew] remove cclashSlightningNew

playsound minecraft:entity.evoker.prepare_summon master @a[distance=..30] ~ ~ ~ 100 1.5

clear @s minecraft:carrot_on_a_stick{cclashSlightning:1} 1

scoreboard players remove @s cclashCSpells 1