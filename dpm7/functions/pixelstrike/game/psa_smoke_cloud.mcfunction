scoreboard players add @s psDummy 1
execute at @s run particle dust 0.4 0.4 0.4 5.0 ~ ~ ~ 1.5 1.75 1.5 1 50 force

#Player blindness
execute at @s run effect clear @a[scores={psFlashed=1..},distance=4..6] blindness
execute at @s run effect give @a[distance=..4] blindness 2 1 true

#Molotov extinguish
execute at @s as @e[name=psMollyArea,distance=..6] at @s run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 4 1
execute at @s as @e[name=psMollyArea,distance=..6] run kill @s

execute as @s[scores={psDummy=201..}] run kill @s