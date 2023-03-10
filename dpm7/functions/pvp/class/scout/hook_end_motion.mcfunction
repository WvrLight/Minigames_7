# Restores part of the player's motion after detaching the rope

# Get entity motion at end of rope duration
execute as @s store result score @s motionX run data get entity @s Motion[0] 10000
execute as @s store result score @s motionY run data get entity @s Motion[1] 10000
execute as @s store result score @s motionZ run data get entity @s Motion[2] 10000

# Reduce the motion slightly when detached during the specified duration
# execute as @s if score @s tick matches 1.. run scoreboard players operation @s motionX /= #4 integers
# execute as @s if score @s tick matches 1.. run scoreboard players operation @s motionY /= #4 integers
# execute as @s if score @s tick matches 1.. run scoreboard players operation @s motionZ /= #4 integers

# Reduce the motion slightly based on the divisor
scoreboard players operation @s motionX /= #2 integers
scoreboard players operation @s motionY /= #2 integers
scoreboard players operation @s motionZ /= #2 integers

# Store the new motion
execute as @s store result entity @s Motion[0] double 0.00025 run scoreboard players get @s motionX
execute as @s store result entity @s Motion[1] double 0.00025 run scoreboard players get @s motionY
execute as @s store result entity @s Motion[2] double 0.00025 run scoreboard players get @s motionZ