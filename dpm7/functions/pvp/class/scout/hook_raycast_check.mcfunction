scoreboard players add @s raycast 1

# execute positioned ~ ~ ~ run particle dust 0.2 0.2 0.2 2.0 ~ ~ ~ 0 0 0 1 5 normal

execute if score @s raycast matches ..40 positioned ^ ^ ^0.5 if block ~ ~ ~ air run function dpm7:pvp/class/scout/hook_raycast_check
execute if score @s raycast matches ..40 positioned ^ ^ ^0.5 unless block ~ ~ ~ air run function dpm7:pvp/class/scout/hook_start

execute if score @s raycast matches 40.. at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 2
execute if score @s raycast matches 40.. run scoreboard players reset @s raycast