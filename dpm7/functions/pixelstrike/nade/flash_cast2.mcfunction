scoreboard players add @s raycast 1

execute positioned ~ ~-20 ~ run scoreboard players set @a[dy=20] psFlashed 0
execute positioned ~ ~-20 ~ run effect give @a[dy=20] blindness 5 1 true
execute positioned ~ ~-20 ~ run tag @a[gamemode=!spectator,dy=20] add psFlashed

execute if entity @s[scores={raycast=..60}] if block ~ ~1.5 ~ air positioned ^ ^ ^1 as @s run function dpm7:pixelstrike/nade/flash_cast2
