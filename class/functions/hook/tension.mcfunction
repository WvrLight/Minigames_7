scoreboard players add @s raycast 1

execute positioned ~ ~ ~ run particle dust 0.5 0.5 0.5 0.5 ~ ~ ~ 0.05 0.05 0.05 2 2 normal
execute positioned ^ ^ ^0.5 run particle dust 0.5 0.5 0.5 0.5 ~ ~ ~ 0.05 0.05 0.05 2 2 normal

execute if score @s raycast matches ..31 positioned ^ ^ ^1 if block ~ ~ ~ air run function class:hook/tension