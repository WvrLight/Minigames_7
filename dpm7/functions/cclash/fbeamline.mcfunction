execute as @s at @s if block ~ ~ ~ air run tp @s ^ ^ ^1.3

fill ~-1 ~ ~-1 ~1 ~ ~1 air replace minecraft:dripstone_block
fill ~-1 ~ ~-1 ~1 ~ ~1 air replace minecraft:blue_ice
fill ~-1 ~ ~-1 ~1 ~ ~1 air replace minecraft:packed_ice

playsound minecraft:entity.illusioner.cast_spell master @a[distance=..15] ~ ~ ~ 0.5 2

execute as @s[scores={cclashDummy=..119}] at @s run effect give @a[distance=..2,tag=cclashPlaying] minecraft:resistance 1 0 true 
execute as @s[scores={cclashDummy=..119}] at @s run effect give @a[distance=..2,tag=cclashPlaying] minecraft:instant_damage 1 1 true

execute as @s[scores={cclashDummy=..119}] at @s as @a[sort=nearest,limit=1,tag=cclashPlaying,distance=..2] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["cclashDummy","cclashFrozen","cclashFrozenNew"]}
execute as @s[scores={cclashDummy=..119}] at @s as @a[sort=nearest,limit=1,tag=cclashPlaying,distance=..2] at @s run tp @e[tag=cclashFrozenNew] @s
scoreboard players set @e[tag=cclashFrozenNew] cclashDummy 60
tag @e[tag=cclashFrozenNew] remove cclashFrozenNew

execute as @e[tag=cclashPball,distance=..2] at @s run scoreboard players set @s cclashDummy 1

execute as @s at @s if block ~ ~ ~ air run particle dust 0.753 0.937 1.000 1 ~ ~ ~ 0.25 0.25 0.25 0 30 normal
execute as @s at @s if block ~ ~ ~ air run particle snowflake ~ ~ ~ 0.25 0.25 0.25 0.1 5 normal

execute as @s at @s unless block ~ ~ ~ air run scoreboard players set @s cclashDummy 0

scoreboard players remove @s cclashDummy 1

execute as @s at @s if score @s cclashDummy matches 1.. run function dpm7:cclash/fbeamline
