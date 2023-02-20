# Store temp id
scoreboard players operation #temp id = @s id

# Modify motion dummy
tag @s remove slamHoverDummy
tag @s add slamForceDummy
tag @s add slamForceDummyInitial
data modify entity @s NoGravity set value 0

# Make player ride motion dummy
execute as @a if score @s id = #temp id run tag @s remove onSlamStart
execute as @a if score @s id = #temp id run tag @s add onSlam
execute as @a if score @s id = #temp id run ride @s mount @e[tag=slamForceDummyInitial,limit=1]

# Move motion dummy downwards
scoreboard players set #temp motionY -2000

execute store result entity @s Motion[1] double 0.001 run scoreboard players get #temp motionY

scoreboard players reset #temp motionY
tag @s remove slamForceDummyInitial