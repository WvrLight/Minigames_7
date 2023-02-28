summon area_effect_cloud ^ ^ ^3 {Duration:2147483647,Tags:["cclashDummy","cclashIspikes","cclashIspikesNew"]}
scoreboard players set @e[tag=cclashIspikesNew] cclashDummy 40
execute as @e[tag=cclashIspikesNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashIspikesNew] at @s run function dpm7:cclash/levelbelow	
tag @e[tag=cclashIspikesNew] remove cclashIspikesNew

summon area_effect_cloud ^ ^ ^5 {Duration:2147483647,Tags:["cclashDummy","cclashIspikes","cclashIspikesNew"]}
scoreboard players set @e[tag=cclashIspikesNew] cclashDummy 44
execute as @e[tag=cclashIspikesNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashIspikesNew] at @s run function dpm7:cclash/levelbelow	
tag @e[tag=cclashIspikesNew] remove cclashIspikesNew

summon area_effect_cloud ^ ^ ^7 {Duration:2147483647,Tags:["cclashDummy","cclashIspikes","cclashIspikesNew"]}
scoreboard players set @e[tag=cclashIspikesNew] cclashDummy 48
execute as @e[tag=cclashIspikesNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashIspikesNew] at @s run function dpm7:cclash/levelbelow	
tag @e[tag=cclashIspikesNew] remove cclashIspikesNew

summon area_effect_cloud ^ ^ ^9 {Duration:2147483647,Tags:["cclashDummy","cclashIspikes","cclashIspikesNew"]}
scoreboard players set @e[tag=cclashIspikesNew] cclashDummy 52
execute as @e[tag=cclashIspikesNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashIspikesNew] at @s run function dpm7:cclash/levelbelow	
tag @e[tag=cclashIspikesNew] remove cclashIspikesNew

summon area_effect_cloud ^ ^ ^11 {Duration:2147483647,Tags:["cclashDummy","cclashIspikes","cclashIspikesNew"]}
scoreboard players set @e[tag=cclashIspikesNew] cclashDummy 56
execute as @e[tag=cclashIspikesNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashIspikesNew] at @s run function dpm7:cclash/levelbelow	
tag @e[tag=cclashIspikesNew] remove cclashIspikesNew

playsound minecraft:entity.ravager.step master @a[distance=..30] ~ ~ ~ 0.8 0

clear @s minecraft:carrot_on_a_stick{cclashIspikes:1} 1

execute as @e[tag=cclashIspikesNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashIspikesNew] at @s run function dpm7:cclash/levelbelow	


scoreboard players remove @s cclashCSpells 1