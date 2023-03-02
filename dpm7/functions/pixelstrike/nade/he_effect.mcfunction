execute store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/nade/he
#execute if score @s raycast matches 3.. run scoreboard players operation @s DMGroll /= @s raycast
scoreboard players operation @s raycast *= #5 integers
scoreboard players operation @s DMGroll -= @s raycast
scoreboard players operation @s psHealth -= @s DMGroll
clear @s stone

execute if entity @s[scores={psHealth=..0}] at @s run particle dust 0.7 0.1 0.1 3.0 ~ ~1 ~ 1 0.5 1 0 50
execute if entity @s[scores={psHealth=..0}] run tellraw @a [{"selector":"@s","bold":true},{"text":" died to a ","color":"red","bold":false},{"text":"Frag Grenade","color":"green"},{"text":"!","color":"red"}]
execute if entity @s[scores={psHealth=..0}] as @s[scores={psHealth=..0}] run function dpm7:pixelstrike/game/death