execute if score @s tick matches 1.. run scoreboard players remove @s tick 1
execute if score @s tick matches ..0 run tag @s add destroyable
execute if score @s tick matches ..0 run scoreboard players reset @s tick