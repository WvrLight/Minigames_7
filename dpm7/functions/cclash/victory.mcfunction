clear @a[tag=cclashPlaying]
tag @a[tag=cclashPlaying] remove cclashPlaying

title @a times 20t 120t 20t
title @a title " "
title @a subtitle ["",{"selector":"@e[scores={cclashMain=1..}]","bold":true,"color":"gold"},{"text":" Conjuer Clash victory!","bold":true,"color":"aqua"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1

scoreboard players set GameOn cclashDummy 0
scoreboard objectives setdisplay sidebar wins
scoreboard players reset * cclashMain

gamerule sendCommandFeedback true
gamerule logAdminCommands true