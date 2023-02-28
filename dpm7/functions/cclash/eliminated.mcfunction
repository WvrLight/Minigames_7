gamemode spectator @s
scoreboard players reset @s cclashMain
scoreboard players remove Players_Remaining: cclashMain 1
clear @s
tellraw @a[tag=cclashPlaying] [""]
tellraw @a[tag=cclashPlaying] ["",{"selector":"@s","color":"yellow"},{"text":" has been eliminated! ","color":"aqua"},{"score":{"name":"Players_Remaining:","objective":"cclashMain"},"bold":true,"color":"yellow"},{"text":" players remain.","color":"aqua"}]
execute as @a[tag=cclashPlaying] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 1.3
execute as @a[tag=cclashPlaying] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 100 1.5
tag @s remove cclashPlaying