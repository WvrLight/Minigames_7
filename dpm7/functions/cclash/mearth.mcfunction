execute as @s[y_rotation=160..-160,x_rotation=-35..35] at @s run summon area_effect_cloud ~ ~ ~-3 {Duration:2147483647,Tags:["cclashDummy","cclashMearth","cclashMearthNew","cclashMearthNS"]}
execute as @s[y_rotation=-30..30,x_rotation=-35..35] at @s run summon area_effect_cloud ~ ~ ~3 {Duration:2147483647,Tags:["cclashDummy","cclashMearth","cclashMearthNew","cclashMearthNS"]}

execute as @s[y_rotation=70..110,x_rotation=-35..35] at @s run summon area_effect_cloud ~-3 ~ ~ {Duration:2147483647,Tags:["cclashDummy","cclashMearth","cclashMearthNew","cclashMearthEW"]}
execute as @s[y_rotation=-110..-70,x_rotation=-35..35] at @s run summon area_effect_cloud ~3 ~ ~ {Duration:2147483647,Tags:["cclashDummy","cclashMearth","cclashMearthNew","cclashMearthEW"]}

execute as @s[y_rotation=111..159,x_rotation=-35..35] at @s run summon area_effect_cloud ~-3 ~ ~-3 {Duration:2147483647,Tags:["cclashDummy","cclashMearth","cclashMearthNew","cclashMearthNWSE"]}
execute as @s[y_rotation=-69..-29,x_rotation=-35..35] at @s run summon area_effect_cloud ~3 ~ ~3 {Duration:2147483647,Tags:["cclashDummy","cclashMearth","cclashMearthNew","cclashMearthNWSE"]}

execute as @s[y_rotation=-159..-109,x_rotation=-35..35] at @s run summon area_effect_cloud ~3 ~ ~-3 {Duration:2147483647,Tags:["cclashDummy","cclashMearth","cclashMearthNew","cclashMearthNESW"]}
execute as @s[y_rotation=41..69,x_rotation=-35..35] at @s run summon area_effect_cloud ~-3 ~ ~3 {Duration:2147483647,Tags:["cclashDummy","cclashMearth","cclashMearthNew","cclashMearthNESW"]}

execute as @s[x_rotation=-90..-37] at @s run summon area_effect_cloud ~ ~5 ~ {Duration:2147483647,Tags:["cclashDummy","cclashMearth","cclashMearthNew","cclashMearthUP"]}
execute as @s[x_rotation=36..90] at @s run summon area_effect_cloud ~ ~1 ~ {Duration:2147483647,Tags:["cclashDummy","cclashMearth","cclashMearthNew","cclashMearthDOWN"]}
execute as @s[x_rotation=36..90] at @s run effect give @s slow_falling 1 0 true

execute as @s[x_rotation=-90..-37] at @s run tp @s ~ ~5.5 ~
execute as @s[x_rotation=36..90] at @s run tp @s ~ ~1.5 ~

execute as @e[tag=cclashMearthNew,tag=cclashMearthNS] at @s run fill ~2 ~ ~ ~-2 ~3 ~ minecraft:dripstone_block replace air
execute as @e[tag=cclashMearthNew,tag=cclashMearthEW] at @s run fill ~ ~ ~2 ~ ~3 ~-2 minecraft:dripstone_block replace air

execute as @e[tag=cclashMearthNew,tag=cclashMearthNWSE] at @s run fill ~ ~ ~ ~ ~3 ~ minecraft:dripstone_block replace air
execute as @e[tag=cclashMearthNew,tag=cclashMearthNWSE] at @s run fill ~1 ~ ~-1 ~1 ~3 ~-1 minecraft:dripstone_block replace air
execute as @e[tag=cclashMearthNew,tag=cclashMearthNWSE] at @s run fill ~2 ~ ~-2 ~2 ~3 ~-2 minecraft:dripstone_block replace air
execute as @e[tag=cclashMearthNew,tag=cclashMearthNWSE] at @s run fill ~-1 ~ ~1 ~-1 ~3 ~1 minecraft:dripstone_block replace air
execute as @e[tag=cclashMearthNew,tag=cclashMearthNWSE] at @s run fill ~-2 ~ ~2 ~-2 ~3 ~2 minecraft:dripstone_block replace air

execute as @e[tag=cclashMearthNew,tag=cclashMearthNESW] at @s run fill ~ ~ ~ ~ ~3 ~ minecraft:dripstone_block replace air
execute as @e[tag=cclashMearthNew,tag=cclashMearthNESW] at @s run fill ~1 ~ ~1 ~1 ~3 ~1 minecraft:dripstone_block replace air
execute as @e[tag=cclashMearthNew,tag=cclashMearthNESW] at @s run fill ~2 ~ ~2 ~2 ~3 ~2 minecraft:dripstone_block replace air
execute as @e[tag=cclashMearthNew,tag=cclashMearthNESW] at @s run fill ~-1 ~ ~-1 ~-1 ~3 ~-1 minecraft:dripstone_block replace air
execute as @e[tag=cclashMearthNew,tag=cclashMearthNESW] at @s run fill ~-2 ~ ~-2 ~-2 ~3 ~-2 minecraft:dripstone_block replace air

execute as @e[tag=cclashMearthNew,tag=cclashMearthUP] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:dripstone_block replace air
execute as @e[tag=cclashMearthNew,tag=cclashMearthDOWN] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:dripstone_block replace air

playsound minecraft:block.grindstone.use master @a[distance=..18] ~ ~ ~ 100 0
playsound minecraft:block.pointed_dripstone.land master @a[distance=..18] ~ ~ ~ 100 0
playsound minecraft:block.nether_ore.break master @a[distance=..18] ~ ~ ~ 100 0
particle block podzol ~ ~ ~ 1 1 1 0 75 normal

execute as @e[tag=cclashMearthNew] at @s run particle block podzol ~ ~1 ~ 1 1 1 0 80 normal

execute unless score @s cclashSpell matches 5 run clear @s minecraft:carrot_on_a_stick{cclashMearth:1} 1

scoreboard players set @e[tag=cclashMearthNew] cclashDummy 120
tag @e[tag=cclashMearthNew] remove cclashMearthNew

execute unless score @s cclashSpell matches 5 run scoreboard players remove @s cclashCSpells 1
execute if score @s cclashSpell matches 5 run scoreboard players set @s cclashSpell 0