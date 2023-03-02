scoreboard players add @s raycast 1

execute positioned ~ ~ ~ run particle soul_fire_flame ~ ~ ~ 0.05 0.05 0.05 0.01 1 normal
execute positioned ^ ^ ^0.5 run particle soul_fire_flame ~ ~ ~ 0.05 0.05 0.05 0.01 1 normal

execute if score @s raycast matches ..31 positioned ^ ^ ^0.5 if block ~ ~ ~ air run function dpm7:pvp/class/scout/hook_raycast