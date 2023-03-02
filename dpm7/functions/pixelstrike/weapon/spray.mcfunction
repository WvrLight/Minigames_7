#Get player rotation
execute store result score @s rotX run data get entity @s Rotation[0] 10
execute store result score @s rotY run data get entity @s Rotation[1] 10

#Sets the inaccuracy according to the bullet number
function dpm7:pixelstrike/weapon/spray_pattern

#Inaccuracy randomizer. Check if player is standing/walking/sneaking/jumping
execute as @s run function dpm7:pixelstrike/weapon/acc/ia_roll_movement
scoreboard players operation @s IAroll += #3 integers
execute if score sign IAroll matches 1 run scoreboard players operation @s shotX += @s IAroll
execute if score sign IAroll matches 2 run scoreboard players operation @s shotX -= @s IAroll

execute as @s run function dpm7:pixelstrike/weapon/acc/ia_roll_movement
scoreboard players operation @s IAroll += #3 integers
execute if score sign IAroll matches 1 run scoreboard players operation @s shotY += @s IAroll
execute if score sign IAroll matches 2 run scoreboard players operation @s shotY -= @s IAroll
clear @s stone

#Stores spray inaccuracy to player
scoreboard players operation @s rotX += @s shotX
scoreboard players operation @s rotY -= @s shotY

#Summon dummy to be used for the spray raycast
scoreboard players set @s raycast 0
summon marker ~ ~ ~ {Tags:["rifledummy"]}
execute as @e[tag=rifledummy,limit=1,distance=..0.1] store result entity @s Rotation[0] float 0.1 run scoreboard players get @p rotX
execute as @e[tag=rifledummy,limit=1,distance=..0.1] store result entity @s Rotation[1] float 0.1 run scoreboard players get @p rotY
execute at @e[tag=rifledummy,limit=1,distance=..0.1] run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 4 1.5
execute at @e[tag=rifledummy,limit=1,distance=..0.1] anchored eyes positioned ^ ^ ^1 run function dpm7:pixelstrike/weapon/shoot/shoot_cast
execute if score psRecoil psDummy matches 1 at @s run tp @s ~ ~ ~ ~ ~-1.5
kill @e[tag=rifledummy,limit=1,distance=..1]

#Spray/Ammo counter
scoreboard players add @s spray 1
scoreboard players set @s sprayR 5
scoreboard players remove @s psAmmo 1

#Right click detection
scoreboard players set @s firing 1
scoreboard players set @s firinghold2 0

execute if entity @s[scores={psAmmo=0}] run function dpm7:pixelstrike/weapon/reload/reload_primary