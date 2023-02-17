scoreboard players set @s rightClick 0

# Summon motion dummy
execute as @s at @s run function class:modules/motion_dummy
scoreboard players set @e[tag=newDummy] tick 0
ride @s mount @e[tag=newDummy,limit=1]
tag @e[tag=newDummy] add leapDummy
tag @s add onLeap

# Get current direction
execute at @s run summon marker ^ ^ ^30 {Tags:["tempDirection"]}

execute store result score @s posX run data get entity @s Pos[0] 10
execute store result score @s posY run data get entity @s Pos[1] 10
execute store result score @s posZ run data get entity @s Pos[2] 10

execute as @e[tag=tempDirection] store result score @s posX run data get entity @s Pos[0] 10
execute as @e[tag=tempDirection] store result score @s posY run data get entity @s Pos[1] 10
execute as @e[tag=tempDirection] store result score @s posZ run data get entity @s Pos[2] 10

scoreboard players operation @e[tag=tempDirection] posX -= @s posX
scoreboard players operation @e[tag=tempDirection] posY -= @s posY
scoreboard players operation @e[tag=tempDirection] posZ -= @s posZ

execute store result entity @e[tag=newDummy,limit=1] Motion[0] double 0.008 run scoreboard players get @e[tag=tempDirection,limit=1] posX
execute store result entity @e[tag=newDummy,limit=1] Motion[1] double 0.006 run scoreboard players get @e[tag=tempDirection,limit=1] posY
execute store result entity @e[tag=newDummy,limit=1] Motion[2] double 0.008 run scoreboard players get @e[tag=tempDirection,limit=1] posZ

kill @e[tag=tempDirection]
tag @e[tag=newDummy] remove newDummy
