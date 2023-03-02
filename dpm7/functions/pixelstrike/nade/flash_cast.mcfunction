#Raycast every block towards the player until it hits a block or the player

scoreboard players add @s raycast 1
execute if entity @s[distance=..0.99] run function dpm7:pixelstrike/nade/flash_effect
execute unless entity @s[distance=..0.99] if score @s raycast matches ..35 positioned ^ ^ ^1 if block ~ ~ ~ air run function dpm7:pixelstrike/nade/flash_cast