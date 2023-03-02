#Get player rotation
execute store result score @s rotX run data get entity @s Rotation[0] 10
execute store result score @s rotY run data get entity @s Rotation[1] 10

scoreboard players reset @s rightClick
scoreboard players set @s IAroll 0
scoreboard players set @s shotX 0
scoreboard players set @s shotY 5

#Inaccuracy randomizer. Check if player is not scoped/jumping
execute if score @s psZoom matches 0 run function dpm7:pixelstrike/weapon/acc/sniper_get_acc
execute if entity @s[nbt={OnGround:0b}] run function dpm7:pixelstrike/weapon/acc/ia_roll_jump

#Stores shot inaccuracy to player
scoreboard players operation @s rotX += @s shotX
scoreboard players operation @s rotY -= @s shotY

#Summon dummy for raycast
summon marker ~ ~ ~ {Tags:["sniperdummy"]}
execute as @e[tag=sniperdummy,limit=1,distance=..0.1] store result entity @s Rotation[0] float 0.1 run scoreboard players get @p rotX
execute as @e[tag=sniperdummy,limit=1,distance=..0.1] store result entity @s Rotation[1] float 0.1 run scoreboard players get @p rotY
execute at @e[tag=sniperdummy,limit=1,distance=..0.1] run playsound minecraft:entity.firework_rocket.large_blast_far master @a ~ ~ ~ 4 1
execute at @e[tag=sniperdummy,limit=1,distance=..0.1] anchored eyes positioned ^ ^ ^1 run function dpm7:pixelstrike/weapon/shoot/shoot_cast
execute if score psRecoil psDummy matches 1 at @s run tp @s ~ ~ ~ ~ ~-2.5
kill @e[tag=sniperdummy,limit=1,distance=..1]

#Ammo counter
scoreboard players remove @s psAmmo 1
scoreboard players set @s sniperR 17

#Remove zoom
attribute @s minecraft:generic.movement_speed base set 0.1
#effect clear @s slowness
effect clear @s jump_boost
clear @s carved_pumpkin{sniperzoom:1}
scoreboard players set @s psZoom 0

execute if entity @s[scores={psAmmo=0}] run function dpm7:pixelstrike/weapon/reload/reload_primary