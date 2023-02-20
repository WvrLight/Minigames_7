# Clear any extra motion dummies
scoreboard players operation #temp id = @s id
execute as @e[tag=motionDummy] if score @s id = #temp id run kill @s
scoreboard players reset #temp id

# Summon dummy
summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["motionDummy","newDummy"]}
scoreboard players operation @e[tag=newDummy] id = @s id

# IMPORTANT
# AFTER YOUR SKILL INITIALIZATIONS, ADD THIS LINE TO THE SKILL FUNCTION WHEN YOU'RE DONE EDITING THE DUMMY
#tag @e[tag=newDummy] remove newDummy