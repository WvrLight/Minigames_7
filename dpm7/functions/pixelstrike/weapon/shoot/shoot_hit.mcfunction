particle dust 0.6 0.0 0.0 0.8 ~ ~ ~ 0.1 0.1 0.1 1 10

#Nearest player to raycast gets tagged
tag @s add self
tag @p[tag=!self,gamemode=!spectator,distance=..3] add psHit
tag @s remove self

#Roll damage
execute if entity @s[nbt={SelectedItem:{tag:{rifle:1}}}] as @p[tag=psHit,distance=..3] run function dpm7:pixelstrike/weapon/shoot/damage/dmg_rifle
execute if entity @s[nbt={SelectedItem:{tag:{sniper:1}}}] as @p[tag=psHit,distance=..3] run function dpm7:pixelstrike/weapon/shoot/damage/dmg_sniper
execute if entity @s[nbt={SelectedItem:{tag:{shotgun:1}}}] as @p[tag=psHit,distance=..3] run function dpm7:pixelstrike/weapon/shoot/damage/dmg_shotgun
execute if entity @s[nbt={SelectedItem:{tag:{smg:1}}}] as @p[tag=psHit,distance=..3] run function dpm7:pixelstrike/weapon/shoot/damage/dmg_smg
execute if entity @s[nbt={SelectedItem:{tag:{secondary:1}}}] as @p[tag=psHit,distance=..3] run function dpm7:pixelstrike/weapon/shoot/damage/dmg_pistol

#Remove health from target
execute as @p[tag=psHit,distance=..3] run scoreboard players operation @s psHealth -= @s DMGroll
effect give @p[tag=psHit,distance=..3] slowness 1 3 true
effect give @p[tag=psHit,distance=..3] jump_boost 1 128 true
scoreboard players reset @p[tag=psHit,distance=..3] DMGroll

#Headshot sound
execute if entity @p[tag=psHit,distance=1.6..3] at @p[tag=psHit,distance=1.6..3] run playsound minecraft:entity.iron_golem.damage master @a ~ ~ ~ 2 1
effect give @p[tag=psHit,distance=1.6..3] instant_damage 1 1 true

#Set bullet as recently hit a player
scoreboard players set @s raycast_hit 3

#Death trigger
execute if entity @p[tag=psHit,distance=..3,scores={psHealth=..0}] run tellraw @a [{"selector":"@s","bold":true},{"text":" killed ","color":"red","bold":false},{"selector":"@p[tag=psHit]","color":"reset"},{"text":"!","color":"red"}]
execute if entity @p[tag=psHit,distance=..3,scores={psHealth=..0}] as @p[tag=psHit,distance=..3,scores={psHealth=..0}] run function dpm7:pixelstrike/game/death

clear @p[tag=psHit,distance=..3] stone
tag @p[tag=psHit,distance=..3] remove psHit