execute if entity @s[scores={psStart=2}] run team join psCT @s
execute if entity @s[scores={psStart=3}] run team join psT @s

tag @s add psPlaying

execute if entity @s[scores={psStart=4}] run team leave @s
execute if entity @s[scores={psStart=4}] run tag @s remove psPlaying

scoreboard players reset @s psStart