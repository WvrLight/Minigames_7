# Store temp id
scoreboard players operation #temp id = @s id

# Damage
execute at @s as @e[tag=!onSlam, distance=..1] run damage @s 6 player_attack by @p[tag=onSlam]
execute at @s as @e[tag=!onSlam, distance=1..4] run damage @s 3 player_attack by @p[tag=onSlam]
execute at @s as @e[tag=!onSlam, distance=..4] run effect give @s slowness 2 5 true
execute at @s as @e[tag=!onSlam, distance=4..8] run damage @s 1 player_attack by @p[tag=onSlam]
execute at @s as @e[tag=!onSlam, distance=4..8] run effect give @s slowness 2 2 true

# Effects
execute positioned as @s rotated 0 0 run function dpm7:pvp/class/zerker/slam_explosion_circle
execute at @s run particle dust 0.6 0.4 0.1 2.0 ~ ~0.5 ~ 1.5 0.5 1.5 0 20
execute at @s run particle dust 1.0 0.3 0.1 2.0 ~ ~0.5 ~ 1.5 0.5 1.5 0 20
execute at @s run particle lava ~ ~0.5 ~ 1.5 0.5 1.5 0 50
execute at @s run particle large_smoke ~ ~0.5 ~ 1.5 0.5 1.5 0 50
execute at @s run particle minecraft:explosion ~ ~ ~ 0.75 0.2 0.75 1 5 normal

execute at @s run playsound entity.generic.explode master @a ~ ~ ~ 3 1

tag @s remove onSlamStart
tag @s remove onSlam

execute as @e[tag=slamDummy] if score @s id = #temp id run kill @s
