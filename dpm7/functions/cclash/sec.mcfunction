scoreboard players remove @a[tag=cclashPlaying,scores={cclashCooldown=1..}] cclashCooldown 1

execute if score time cclashDummy matches 1.. run scoreboard players remove time cclashDummy 1
execute as @a[tag=cclashPlaying,scores={cclashDead=1..}] at @s run scoreboard players remove @s cclashDead 1

title @a times 0 20 0
title @a[scores={cclashDead=1..},tag=cclashPlaying] title " "
execute as @a[tag=cclashPlaying,scores={cclashDead=1..}] at @s run title @s subtitle ["",{"text":" Respawning in ","color":"aqua"},{"score":{"name":"@s","objective":"cclashDead"},"color":"yellow"},{"text":" seconds.","color":"aqua"}]
execute as @a[tag=cclashPlaying,scores={cclashMain=0}] at @s run function dpm7:cclash/eliminated

execute if score GameOn cclashDummy matches 1 run schedule function dpm7:cclash/sec 20t