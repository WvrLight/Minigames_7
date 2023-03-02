execute at @s anchored eyes run particle dust 0.6 0.9 0.9 1.0 ~ ~ ~ 0.15 0.15 0.15 1 10

scoreboard players add @s psDummy 1
execute if entity @s[scores={psDummy=10..}] at @s run function dpm7:pixelstrike/nade/flash