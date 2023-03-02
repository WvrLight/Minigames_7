scoreboard players set @s IAroll 0

execute store result score @s IAroll run loot give @s loot dpm7:pixelstrike/acc/ia_jump
execute if score sign IAroll matches 1 run scoreboard players operation @s shotX += @s IAroll
execute if score sign IAroll matches 2 run scoreboard players operation @s shotX -= @s IAroll

scoreboard players set @s IAroll 0

execute store result score @s IAroll run loot give @s loot dpm7:pixelstrike/acc/ia_jump
execute if score sign IAroll matches 1 run scoreboard players operation @s shotY += @s IAroll
execute if score sign IAroll matches 2 run scoreboard players operation @s shotY -= @s IAroll

clear @s stone