# Used when hook_check is successful

# Skill cooldown details
scoreboard players set @s cooldown 4
scoreboard players set @s skillId 0
clear @s carrot_on_a_stick{hook:1}
execute at @s run function dpm7:pvp/modules/cooldown_dummy

scoreboard players reset @s raycast

# Summon motion dummy
execute as @s at @s run function dpm7:pvp/modules/motion_dummy
ride @s mount @e[tag=newDummy,limit=1]
scoreboard players set @e[tag=newDummy] tick 15
tag @e[tag=newDummy] add hookTargetDummy
tag @e[tag=newDummy] add onTimer
tag @e[tag=newDummy] remove newDummy

tag @s add onHook

# Kill existing hook dummies for player if there are any
scoreboard players operation #temp id = @s id
execute as @e[tag=hookDummy] if score @s id = #temp id run kill @s
scoreboard players reset #temp id

# Summon hook dummy and store data
summon marker ~ ~ ~ {Tags:["hookDummy","newDummy"]}
scoreboard players operation @e[tag=newDummy] id = @s id
execute as @e[tag=newDummy] store result score @s posX run data get entity @s Pos[0] 100
execute as @e[tag=newDummy] store result score @s posY run data get entity @s Pos[1] 100
execute as @e[tag=newDummy] store result score @s posZ run data get entity @s Pos[2] 100

# Effects
playsound minecraft:block.iron_door.open master @a ~ ~ ~ 2 0.6
execute at @s run playsound minecraft:entity.horse.breathe master @a ~ ~ ~ 1 0.4
execute at @s run playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 3 1.5

tag @e[tag=newDummy] remove newDummy