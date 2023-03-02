scoreboard players add @s raycast 1
execute if entity @s[distance=..0.99,gamemode=!spectator] run function dpm7:pixelstrike/nade/he_effect
execute unless entity @s[distance=..0.99,gamemode=!spectator] if score @s raycast matches ..16 positioned ^ ^ ^0.5 if block ~ ~ ~ air run function dpm7:pixelstrike/nade/he_cast