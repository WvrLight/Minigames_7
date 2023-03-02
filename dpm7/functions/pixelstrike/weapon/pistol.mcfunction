#Get player rotation
execute store result score @s rotX run data get entity @s Rotation[0] 10
execute store result score @s rotY run data get entity @s Rotation[1] 10

#Set variables
scoreboard players reset @s rightClick
scoreboard players set @s IAroll 0
scoreboard players set @s shotX 0
scoreboard players set @s shotY 7

#Recoil
scoreboard players operation @s shotY *= @s pistol

#Inaccuracy
execute as @s run function dpm7:pixelstrike/weapon/acc/ia_roll_movement
scoreboard players operation @s IAroll += #7 integers
execute if score sign IAroll matches 1 run scoreboard players operation @s shotX += @s IAroll
execute if score sign IAroll matches 2 run scoreboard players operation @s shotX -= @s IAroll

execute as @s run function dpm7:pixelstrike/weapon/acc/ia_roll_movement
scoreboard players operation @s IAroll += #3 integers
execute if score sign IAroll matches 1 run scoreboard players operation @s shotY += @s IAroll
execute if score sign IAroll matches 2 run scoreboard players operation @s shotY -= @s IAroll

clear @s stone

#Stores shot inaccuracy to player
scoreboard players operation @s rotX += @s shotX
scoreboard players operation @s rotY -= @s shotY

#Summon dummy for raycast
summon marker ~ ~ ~ {Tags:["pistoldummy"]}
execute as @e[tag=pistoldummy,limit=1,distance=..0.1] store result entity @s Rotation[0] float 0.1 run scoreboard players get @p rotX
execute as @e[tag=pistoldummy,limit=1,distance=..0.1] store result entity @s Rotation[1] float 0.1 run scoreboard players get @p rotY
execute at @e[tag=pistoldummy,limit=1,distance=..0.1] run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 4 1.5
execute at @e[tag=pistoldummy,limit=1,distance=..0.1] anchored eyes positioned ^ ^ ^1 run function dpm7:pixelstrike/weapon/shoot/shoot_cast
execute if score psRecoil psDummy matches 1 at @s run tp @s ~ ~ ~ ~ ~-0.5
kill @e[tag=pistoldummy,limit=1,distance=..1]

#Ammo counter
scoreboard players add @s pistol 1
scoreboard players remove @s psAmmo2 1
scoreboard players set @s pistolR 3
scoreboard players set @s pistolR2 10

#Reload
execute as @s[scores={psAmmo2=0}] run function dpm7:pixelstrike/weapon/reload/reload_pistol