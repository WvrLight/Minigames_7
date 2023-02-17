# Summon motion dummy
execute as @s at @s run function class:modules/motion_dummy
ride @s mount @e[tag=newDummy,limit=1]
tag @e[tag=newDummy] remove newDummy

tag @s add onHook

scoreboard players operation #temp id = @s id
execute as @e[tag=hookDummy] if score @s id = #temp id run kill @s
scoreboard players reset #temp id

# Summon hook dummy and store data
summon marker ~ ~ ~ {Tags:["hookDummy","newDummy"]}
scoreboard players operation @e[tag=newDummy] id = @s id

execute as @e[tag=newDummy] store result score @s posX run data get entity @s Pos[0] 100
execute as @e[tag=newDummy] store result score @s posY run data get entity @s Pos[1] 100
execute as @e[tag=newDummy] store result score @s posZ run data get entity @s Pos[2] 100

tag @e[tag=newDummy] remove newDummy