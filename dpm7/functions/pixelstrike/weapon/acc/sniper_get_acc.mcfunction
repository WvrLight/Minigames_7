execute as @s run function dpm7:pixelstrike/weapon/acc/ia_roll_sniper
execute if score sign IAroll matches 1 run scoreboard players operation @s shotX += @s IAroll
execute if score sign IAroll matches 2 run scoreboard players operation @s shotX -= @s IAroll

execute as @s run function dpm7:pixelstrike/weapon/acc/ia_roll_sniper
execute if score sign IAroll matches 1 run scoreboard players operation @s shotY += @s IAroll
execute if score sign IAroll matches 2 run scoreboard players operation @s shotY -= @s IAroll

clear @s stone