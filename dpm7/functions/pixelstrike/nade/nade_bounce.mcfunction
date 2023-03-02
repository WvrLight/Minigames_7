#Store current nade motion
execute store result score @s motionX run data get entity @s Motion[0] 1000
execute if entity @s[tag=!psMolly] store result score @s motionY run data get entity @s Motion[1] 1000
execute store result score @s motionZ run data get entity @s Motion[2] 1000

#Check if nade has hit a block by comparing the current motion with the old motion, then apply motion
execute if score @s motionX matches -80..80 unless score @s posX matches -200..200 store result entity @s Motion[0] double -0.0007 run scoreboard players get @s posX
execute if score @s motionX matches -80..80 unless score @s posX matches -200..200 at @s run playsound minecraft:block.iron_trapdoor.close master @a ~ ~ ~ 0.75 1.5
execute if entity @s[tag=!psMolly] if score @s motionY matches -80..80 unless score @s posY matches -200..200 store result entity @s Motion[1] double -0.0007 run scoreboard players get @s posY
execute if entity @s[tag=!psMolly] if score @s motionY matches -80..80 unless score @s posY matches -200..200 at @s run playsound minecraft:block.iron_trapdoor.close master @a ~ ~ ~ 0.75 1.5
execute if score @s motionZ matches -80..80 unless score @s posZ matches -200..200 store result entity @s Motion[2] double -0.0007 run scoreboard players get @s posZ
execute if score @s motionX matches -80..80 unless score @s posX matches -200..200 at @s run playsound minecraft:block.iron_trapdoor.close master @a ~ ~ ~ 0.75 1.5

#Store nade motion to be used for next tick
execute store result score @s posX run data get entity @s Motion[0] 1000
execute if entity @s[tag=!psMolly] store result score @s posY run data get entity @s Motion[1] 1000
execute store result score @s posZ run data get entity @s Motion[2] 1000

#execute as @s run tellraw @a [{"text":"rotX "},{"score":{"name":"@s","objective":"rotX"}}]
#execute as @s run tellraw @a [{"text":"newmotionX "},{"score":{"name":"@s","objective":"motionX"}}]
#execute as @s run tellraw @a [{"text":"newmotionZ "},{"score":{"name":"@s","objective":"motionZ"}}]

#scoreboard players add @s psBounceH 10
#scoreboard players reset nadeRotateTemp psDummy