# Store temp id
scoreboard players operation #temp id = @s id

# Store entity position
#execute as @e[tag=hook] store result score @s posX run data get entity @s Pos[0] 100
#execute as @e[tag=hook] store result score @s posY run data get entity @s Pos[1] 1000
#execute as @e[tag=hook] store result score @s posZ run data get entity @s Pos[2] 100

execute store result score @s posX run data get entity @s Pos[0] 100
execute store result score @s posY run data get entity @s Pos[1] 100
execute store result score @s posZ run data get entity @s Pos[2] 100

execute store result score @s motionX run data get entity @s Motion[0] 10000
execute store result score @s motionY run data get entity @s Motion[1] 10000
execute store result score @s motionZ run data get entity @s Motion[2] 10000

# Apply pull force towards hook origin

execute as @e[tag=hookDummy] if score @s id = #temp id run tag @s add targetHook
scoreboard players operation #temp posX = @e[tag=targetHook,limit=1] posX
scoreboard players operation #temp posY = @e[tag=targetHook,limit=1] posY
scoreboard players operation #temp posZ = @e[tag=targetHook,limit=1] posZ
scoreboard players operation #temp posX -= @s posX
scoreboard players operation #temp posY -= @s posY
scoreboard players operation #temp posZ -= @s posZ

scoreboard players operation #temp posY *= #hookTensionMulti motionY

# Apply tension force
scoreboard players set @s raycast 0

execute at @s anchored eyes facing entity @e[tag=targetHook] feet positioned ^ ^ ^1 run function class:hook/tension

# scoreboard players operation tension motionY = @s raycast

# Apply sum of forces
scoreboard players operation @s motionX += #temp posX
scoreboard players operation @s motionY += #temp posY
scoreboard players operation @s motionZ += #temp posZ

tag @e[tag=targetHook] remove targetHook

# Apply pull force towards direction
execute at @s on passengers at @s run summon marker ^ ^ ^10 {Tags:["tempDirection"]}

execute as @e[tag=tempDirection] store result score @s posX run data get entity @s Pos[0] 10
#execute as @e[tag=tempDirection] store result score @s posY run data get entity @s Pos[1] 10
execute as @e[tag=tempDirection] store result score @s posZ run data get entity @s Pos[2] 10

scoreboard players operation @s motionX += @e[tag=tempDirection] posX
#scoreboard players operation temp posY += @e[tag=tempDirection] posY
scoreboard players operation @s motionZ += @e[tag=tempDirection] posZ

kill @e[tag=tempDirection]

# Apply gravity force
scoreboard players operation @s motionY -= #gravity motionY

# Store new motion
execute store result entity @s Motion[0] double 0.0001075 run scoreboard players get @s motionX
execute store result entity @s Motion[1] double 0.0000975 run scoreboard players get @s motionY
execute store result entity @s Motion[2] double 0.0001075 run scoreboard players get @s motionZ

scoreboard players reset #temp posX
scoreboard players reset #temp posY
scoreboard players reset #temp posZ
scoreboard players reset #temp id

