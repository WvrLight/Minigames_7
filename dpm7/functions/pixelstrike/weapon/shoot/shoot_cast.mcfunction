#The raycast of the bullet

scoreboard players add @s raycast 1
execute if score shotTracer psDummy matches 1 run particle dust 1.0 0.9 0.5 0.4 ~ ~-0.1 ~ 0 0 0 0 1 force @s
execute if score shotTracer psDummy matches 1.. run particle dust 1.0 0.9 0.5 0.5 ~ ~ ~ 0 0 0 0 1 force @a[gamemode=spectator]
execute if block ^ ^ ^0.5 #minecraft:slabs positioned ^ ^ ^0.5 unless block ~ ~0.5 ~ air positioned ^ ^ ^-0.5 run particle dust 0.5 0.5 0.5 1.5 ~ ~0.1 ~ 0 0 0 1 3 force
execute unless block ^ ^ ^0.5 #dpm7:partial unless block ^ ^ ^0.5 #dpm7:air run particle dust 0.5 0.5 0.5 1.5 ~ ~ ~ 0 0 0 1 3 force
#playsound minecraft:entity.generic.burn master @a[distance=..64] ~ ~ ~ 0.0015 1

#Hit checking
tag @s add shooter
execute if score hitDummy psDummy matches 1 if score @s raycast_hit matches 0 if entity @e[tag=psShotDummy,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=psShotDummy,dx=0] positioned ~0.99 ~0.99 ~0.99 run function dpm7:pixelstrike/weapon/shoot/shoot_hit_dummy
execute if score @s raycast_hit matches 0 if entity @e[tag=psPlaying,tag=!shooter,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=psPlaying,gamemode=!spectator,tag=!shooter,dx=0] positioned ~0.99 ~0.99 ~0.99 run function dpm7:pixelstrike/weapon/shoot/shoot_hit
tag @s remove shooter

execute if score @s raycast_hit matches 1.. run scoreboard players remove @s raycast_hit 1

#Block checking
execute if entity @s[scores={raycast=..96}] if block ~ ~ ~ #minecraft:slabs if block ~ ~0.5 ~ #dpm7:air positioned ^ ^ ^0.5 as @s run function dpm7:pixelstrike/weapon/shoot/shoot_cast
execute if entity @s[scores={raycast=..96}] if block ~ ~ ~ #dpm7:air positioned ^ ^ ^0.5 as @s run function dpm7:pixelstrike/weapon/shoot/shoot_cast
execute if entity @s[scores={raycast=..96}] if block ~ ~ ~ #minecraft:doors positioned ^ ^ ^0.5 as @s run function dpm7:pixelstrike/weapon/shoot/shoot_cast

#Kill raycast if it exceeds the range
execute if entity @s[scores={raycast=96..}] run scoreboard players reset @s raycast
