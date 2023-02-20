scoreboard players remove @s cooldown 1
scoreboard players operation #temp cooldown = @s cooldown
scoreboard players operation #temp cooldown %= #20 integers

execute if score #temp cooldown matches 0 run function dpm7:pvp/modules/cooldown_remove

scoreboard players reset #temp cooldown