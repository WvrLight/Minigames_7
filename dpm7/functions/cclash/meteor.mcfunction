summon area_effect_cloud ^ ^ ^7 {Duration:2147483647,Tags:["cclashDummy","cclashMeteor","cclashMeteorNew"]}
scoreboard players set @e[tag=cclashMeteorNew] cclashDummy 60
execute as @e[tag=cclashMeteorNew] at @s run function dpm7:cclash/levelbelow
execute as @e[tag=cclashMeteorNew] at @s run function dpm7:cclash/levelabove
execute as @e[tag=cclashMeteorNew] at @s run summon fireball ~ ~15 ~ {ExplosionPower:3b,power:[0.0,-0.02,0.0],Tags:["cclashMeteorite"],ActiveEffects:[{Id:11b,Amplifier:100b,Duration:1999980}],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:4019}}}
tag @e[tag=cclashMeteorNew] remove cclashMeteorNew

playsound minecraft:entity.evoker.cast_spell master @a[distance=..15] ~ ~ ~ 100 0

clear @s minecraft:carrot_on_a_stick{cclashMeteor:1} 1

scoreboard players remove @s cclashCSpells 1