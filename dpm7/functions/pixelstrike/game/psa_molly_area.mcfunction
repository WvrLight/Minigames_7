#Sound
execute at @s run particle minecraft:flame ~ ~ ~ 1.5 0 1.5 0.02 25
execute at @s run particle minecraft:dust 0.3 0.3 0.3 2.5 ~ ~0.2 ~ 1.5 1.25 1.5 0.02 15
execute at @s run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 0.2 1.5
execute at @s run particle minecraft:flame ^ ^ ^3.5 0.05 0 0.05 0.01 2
execute at @s run particle minecraft:flame ^ ^ ^-3.5 0.05 0.05 0.05 0.01 2
execute at @s run particle minecraft:flame ^3.5 ^ ^ 0.05 0.05 0.05 0.01 2
execute at @s run particle minecraft:flame ^-3.5 ^ ^ 0.05 0.05 0.05 0.01 2
execute at @s run tp @s ~ ~ ~ ~10 ~

#Damage
execute at @s as @a[tag=psPlaying,distance=..3.5,gamemode=!spectator] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/nade/molly
execute at @s as @a[tag=psPlaying,distance=..3.5,gamemode=!spectator] run scoreboard players operation @s psHealth -= @s DMGroll
execute at @s as @a[tag=psPlaying,distance=..3.5,gamemode=!spectator] run clear @s stone
execute at @s at @a[tag=psPlaying,distance=..3.5,gamemode=!spectator] run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.1 2

#Death
execute at @s as @a[tag=psPlaying,distance=..3.5] if entity @s[scores={psHealth=..0}] run tellraw @a [{"selector":"@s","bold":true},{"text":" died to a ","color":"red","bold":false},{"text":"Molotov","color":"yellow"},{"text":"!","color":"red"}]
execute at @s as @a[tag=psPlaying,distance=..3.5] if entity @s[scores={psHealth=..0}] as @s[scores={psHealth=..0}] run function dpm7:pixelstrike/game/death
scoreboard players add @s psDummy 1
execute if entity @s[scores={psDummy=61..}] run kill @s