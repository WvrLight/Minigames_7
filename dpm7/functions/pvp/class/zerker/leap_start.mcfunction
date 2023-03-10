# rightClick cooldown details
scoreboard players set @s cooldown 4
scoreboard players set @s rightClickId 1
clear @s carrot_on_a_stick{leap:1}
execute at @s run function dpm7:pvp/modules/cooldown_dummy

# Summon motion dummy
execute as @s at @s run function dpm7:pvp/modules/motion_dummy
scoreboard players set @e[tag=newDummy] tick 6
ride @s mount @e[tag=newDummy,limit=1]
tag @e[tag=newDummy] add leapDummy
tag @e[tag=newDummy] add onTimer
tag @s add onLeap

# rightClick interactions
execute as @s[tag=onSlamStart] run tag @s add onSlam
execute as @s[tag=onSlamStart] run tag @s remove onSlamStart
execute as @s[tag=onFlurryChannel] run effect clear @s slowness
execute as @s[tag=onFlurryChannel] run effect clear @s slow_falling
execute as @s[tag=onFlurryEffect] run scoreboard players reset @s tick
execute as @s[tag=onFlurryEffect] run scoreboard players reset @s counter
execute as @s[tag=onFlurryEffect] run effect clear @s slowness
execute as @s[tag=onFlurryEffect] run effect clear @s slow_falling
execute as @s[tag=onFlurryEffect] run tag @s remove onTimer
execute as @s[tag=onFlurryEffect] run tag @s remove onFlurryEffect

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

# Effects
execute at @s unless block ~ ~-1 ~ air positioned as @s rotated 0 0 run function dpm7:pvp/class/zerker/leap_circle
execute at @s run playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 3 1.5
execute at @s run playsound minecraft:entity.blaze.shoot master @p ~ ~ ~ 3 0.8

kill @e[tag=tempDirection]
tag @e[tag=newDummy] remove newDummy