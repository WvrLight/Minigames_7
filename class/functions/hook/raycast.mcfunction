execute if score @s raycast matches ..30 run scoreboard players add @s raycast 1

execute positioned ~ ~ ~ run particle dust 0.2 0.2 0.2 2.0 ~ ~ ~ 0 0 0 1 5 normal

execute if score @s raycast matches ..30 positioned ^ ^ ^1 if block ~ ~ ~ air run function class:hook/raycast
execute if score @s raycast matches ..30 positioned ^ ^ ^1 unless block ~ ~ ~ air run function class:hook/hook_dummy

execute if score @s raycast matches 31.. run scoreboard players reset @s raycast