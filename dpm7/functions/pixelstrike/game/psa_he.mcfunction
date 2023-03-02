execute at @s run particle dust 0.2 0.4 0.2 2.0 ~ ~0.1 ~ 0.05 0.05 0.05 0 2

scoreboard players add @s psDummy 1
execute if entity @s[scores={psDummy=16..}] at @s if entity @a[distance=..1.5] run function dpm7:pixelstrike/nade/he_explode
execute if entity @s[scores={psDummy=42..}] at @s run function dpm7:pixelstrike/nade/he_explode
