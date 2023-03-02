execute at @s run particle dust 0.5 0.2 0.2 2.0 ~ ~0.1 ~ 0.05 0.05 0.05 0 2

execute as @s store result score @s motionX run data get entity @s Motion[0] 100
execute as @s store result score @s motionZ run data get entity @s Motion[2] 100
execute if entity @s[scores={motionX=0,motionZ=0}] at @s run summon marker ~ ~ ~ {CustomName:'{"text":"psMollyArea"}'}
execute if entity @s[scores={motionX=0,motionZ=0}] at @s run particle dust 0.3 0.3 0.3 4 ~ ~0.5 ~ 1.25 0.5 1.25 0 25
execute if entity @s[scores={motionX=0,motionZ=0}] at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 4 1.5
execute if entity @s[scores={motionX=0,motionZ=0}] at @s run tp @s ~ -100 ~
execute if entity @s[scores={motionX=0,motionZ=0}] at @s run kill @s