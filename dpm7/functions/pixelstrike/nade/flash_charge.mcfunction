clear @s minecraft:carrot_on_a_stick{psFlashCharge:1} 1 
scoreboard players reset @s rightClick

#Remove grenade from player
execute if score @s psNadeMax matches 1.. run scoreboard players remove @s psNadeMax 1

execute at @s anchored eyes run summon marker ^ ^ ^0.1 {Tags:["psFlash"],CustomName:'{"text":"psDummy"}'}
execute store result entity @e[tag=psFlash,limit=1,sort=nearest] Rotation[0] float 0.01 run data get entity @s Rotation[0] 100
execute store result entity @e[tag=psFlash,limit=1,sort=nearest] Rotation[1] float 0.01 run data get entity @s Rotation[1] 100

execute at @s run playsound minecraft:entity.ender_eye.launch master @s ~ ~ ~ 1 1.5

execute as @e[tag=psFlash,limit=1,sort=nearest] at @s run function dpm7:pixelstrike/nade/flash_charge_cast