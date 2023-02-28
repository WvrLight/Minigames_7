execute as @s at @s if block ^ ^1 ^1 air run tp @s ^ ^ ^1

execute as @s at @s if block ^ ^1 ^1 air run particle flame ^ ^1 ^-1 0.2 0.3 0.2 0.01 20 normal
execute as @s at @s if block ^ ^1 ^1 air run particle smoke ^ ^0.5 ^-1 0.2 0.3 0.2 0 20 normal

execute as @e[distance=..2,scores={cclashFflashtime=0}] at @s run summon small_fireball ~ ~2.5 ~ {HasVisualFire:0b,power:[0.0,-10.0,0.0],Item:{id:"minecraft:air",Count:1b}}

scoreboard players remove @s cclashFflashtime 1

execute as @s at @s if score @s cclashFflashtime matches 1.. run function dpm7:cclash/fflashtp

#execute as @s at @s if block ^ ^ ^1 air run function dpm7:cclash/fflashtp