execute at @s on passengers at @s run summon marker ^ ^ ^100 {Tags:["tempDirection"]}

execute as @e[tag=tempDirection] store result score @s posX run data get entity @s Pos[0] 10
#execute as @e[tag=tempDirection] store result score @s posY run data get entity @s Pos[1] 10
execute as @e[tag=tempDirection] store result score @s posZ run data get entity @s Pos[2] 10

scoreboard players operation @s motionX += @e[tag=tempDirection] posX
#scoreboard players operation temp posY += @e[tag=tempDirection] posY
scoreboard players operation @s motionZ += @e[tag=tempDirection] posZ

kill @e[tag=tempDirection]