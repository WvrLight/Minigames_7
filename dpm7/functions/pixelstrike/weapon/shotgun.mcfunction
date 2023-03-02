#Get player rotation
execute store result score @s rotX run data get entity @s Rotation[0] 10
execute store result score @s rotY run data get entity @s Rotation[1] 10

scoreboard players set @s psReload 0
scoreboard players reset @s rightClick
scoreboard players set @s IAroll 0
scoreboard players set @s shotX 0
scoreboard players set @s shotY 0

execute as @s run function dpm7:pixelstrike/weapon/acc/shotgun_get_acc
execute if entity @s[nbt={OnGround:0b}] run function dpm7:pixelstrike/weapon/acc/ia_roll_jump

#Stores shot inaccuracy to player
scoreboard players operation @s rotX += @s shotX
scoreboard players operation @s rotY -= @s shotY

#Summon dummy for raycast
summon marker ~ ~ ~ {Tags:["shotgundummy"]}
execute as @e[tag=shotgundummy,limit=1,distance=..0.1] store result entity @s Rotation[0] float 0.1 run scoreboard players get @p rotX
execute as @e[tag=shotgundummy,limit=1,distance=..0.1] store result entity @s Rotation[1] float 0.1 run scoreboard players get @p rotY
execute at @e[tag=shotgundummy,limit=1,distance=..0.1] anchored eyes positioned ^ ^ ^1 run function dpm7:pixelstrike/weapon/shoot/shoot_cast
kill @e[tag=shotgundummy,limit=1,distance=..1]

#Recursion for 8 bullets and ammo counter
scoreboard players add @s shotgun 1
execute if score @s shotgun matches 8 run function dpm7:pixelstrike/weapon/shotgun_end
execute if score @s shotgun matches 1..7 run function dpm7:pixelstrike/weapon/shotgun

execute as @s[scores={psAmmo=0}] run scoreboard players set @s psReload 17