# Check if motion dummy is not moving horizontally
# For destroying motion dummy once player hits the ground or a wall

execute store result score @s motionX run data get entity @s Motion[0] 10000
execute store result score @s motionZ run data get entity @s Motion[2] 10000

execute if score @s motionX matches -10..10 if score @s motionZ matches -10..10 at @s run function dpm7:pvp/modules/motion_dummy_clear