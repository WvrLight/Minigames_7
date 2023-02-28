tellraw @a [""]
tellraw @a ["",{"text":"❂","color":"dark_green"},{"text":"❂","color":"dark_aqua"},{"text":"❂","color":"dark_red"},{"text":" Conjurer Clash ","bold":true,"color":"aqua"},{"text":"❂","color":"dark_red"},{"text":"❂","color":"dark_aqua"},{"text":"❂","color":"dark_green"}]
tellraw @a [""]
tellraw @a ["",{"text":"[CLICK HERE] ","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @s at @s run function dpm7:cclash/join"}},{"text":"to join the next game.","color":"yellow"}]
tellraw @s ["",{"text":"[CLICK HERE] ","color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @s at @s run function dpm7:cclash/start"}},{"text":"to start the game.","color":"yellow"}]
tellraw @a [""]

scoreboard objectives setdisplay sidebar cclashMain
scoreboard players reset * cclashMain

tag @s add cclashPlaying
tp @s 190 64 151
clear @s
gamemode adventure @s
scoreboard players set @s cclashMain 5
scoreboard players set Players_Remaining: cclashMain 0

scoreboard players enable @s ConjurerClash
scoreboard players set @s ConjurerClash 0

gamerule sendCommandFeedback false
gamerule logAdminCommands false