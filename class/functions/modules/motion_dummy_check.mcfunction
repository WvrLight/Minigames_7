execute store result score @s motionX run data get entity @s Motion[0] 10000
execute store result score @s motionZ run data get entity @s Motion[2] 10000

execute if score @s motionX matches -10..10 if score @s motionZ matches -10..10 run function class:modules/motion_dummy_clear