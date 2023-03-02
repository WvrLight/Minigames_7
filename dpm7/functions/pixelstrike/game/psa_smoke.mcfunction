execute at @s run particle dust 0.2 0.2 0.2 2.0 ^ ^ ^4 0.05 0.05 0.05 1 2
execute at @s run particle dust 0.2 0.2 0.2 2.0 ^ ^ ^-4 0.05 0.05 0.05 1 2
execute at @s run particle dust 0.2 0.2 0.2 2.0 ^4 ^ ^ 0.05 0.05 0.05 1 2
execute at @s run particle dust 0.2 0.2 0.2 2.0 ^-4 ^ ^ 0.05 0.05 0.05 1 2
execute at @s run tp @s ~ ~ ~ ~10 ~
execute at @s run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 0.05 0

scoreboard players add @s psDummy 1

#Time expiration
execute if entity @s[scores={psDummy=18..}] at @s run function dpm7:pixelstrike/nade/smoke_beacon_cloud

#Molly expiration
execute at @s if entity @e[name=psMollyArea,distance=..4.5] at @s run function dpm7:pixelstrike/nade/smoke_beacon_cloud
# execute as @s[scores={motionX=0,motionZ=0}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 4 0
# execute as @s[scores={motionX=0,motionZ=0}] run kill @s
# execute as @s store result score @s motionX run data get entity @s Motion[0] 100
# execute as @s store result score @s motionZ run data get entity @s Motion[2] 100
# execute as @s[scores={motionX=0,motionZ=0}] at @s run summon area_effect_cloud ~ ~-0.25 ~ {Duration:2147483647,CustomName:'{"text":"psSmokeCloud"}'}
# execute as @s[scores={motionX=0,motionZ=0}] at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 4 0
# execute as @s[scores={motionX=0,motionZ=0}] run kill @s