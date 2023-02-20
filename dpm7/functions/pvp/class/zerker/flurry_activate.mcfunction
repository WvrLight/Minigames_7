tag @s remove onFlurryChannel

# Store temp id
scoreboard players operation #temp id = @s id

# Skill interactions
execute as @e[tag=motionDummy] at @s if score @s id = #temp id run function dpm7:pvp/modules/motion_dummy_clear

effect give @p slowness infinite 4 true
effect give @s slow_falling infinite 2 true
tag @s add onFlurryEffect
execute at @s run function dpm7:pvp/class/zerker/flurry_proc