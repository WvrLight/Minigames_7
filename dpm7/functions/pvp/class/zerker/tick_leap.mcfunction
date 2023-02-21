# Function for enabling leap dummy to be destroyed after a certain amount of ticks
# This is to prevent the leap dummy immediately being destroyed after summon

execute if score @s tick matches 1.. run scoreboard players remove @s tick 1
execute if score @s tick matches ..0 run tag @s add destroyable
execute if score @s tick matches ..0 run scoreboard players reset @s tick