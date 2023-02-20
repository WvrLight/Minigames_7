scoreboard players add #particle raycast 1

execute positioned ^ ^ ^1 run particle large_smoke ~ ~ ~ ^ ^ ^1000000 0.0000005 0

execute as @s if score #particle raycast matches ..72 rotated ~5 ~ run function dpm7:pvp/class/zerker/leap_circle
execute if score #particle raycast matches 73.. run scoreboard players reset #particle