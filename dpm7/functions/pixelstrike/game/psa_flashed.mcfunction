#execute as @a[tag=psFlashed] run effect give @s blindness 1 1
scoreboard players remove @s psFlashed 1
execute at @s positioned ^ ^ ^0.3 run particle dust 0.9 0.9 0.9 2.0 ~ ~1.6 ~ 0.1 0.05 0.1 1 3
execute if entity @s[scores={psFlashed=0}] run tag @s remove psFlashed