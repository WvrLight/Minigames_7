# Skill activations
execute as @a[scores={rightClick=1..},nbt={SelectedItem:{tag:{flurry:1}}}] at @s run function dpm7:pvp/class/zerker/flurry_start
execute as @a[scores={rightClick=1..},nbt={SelectedItem:{tag:{slam:1}}}] at @s run function dpm7:pvp/class/zerker/slam_check
execute as @a[scores={rightClick=1..},nbt={SelectedItem:{tag:{leap:1}}}] at @s run function dpm7:pvp/class/zerker/leap_start

# Flurry timer
execute as @a[tag=onFlurryChannel] if score @s tick matches ..0 at @s run function dpm7:pvp/class/zerker/flurry_activate
execute as @a[tag=onFlurryEffect] if score @s tick matches ..0 at @s run function dpm7:pvp/class/zerker/flurry_proc

# Slam timer
execute as @e[tag=slamStartDummy] if score @s tick matches ..0 run function dpm7:pvp/class/zerker/slam_hover
execute as @e[tag=slamHoverDummy] if score @s id = @p id run tp @e[tag=slamHoverDummy, limit=1, sort=nearest] @p
execute as @e[tag=slamHoverDummy] if score @s tick matches ..0 at @s run function dpm7:pvp/class/zerker/slam_force

execute as @a[tag=onSlam] at @s unless block ~ ~-0.5 ~ air run function dpm7:pvp/class/zerker/slam_explosion
execute as @e[tag=leapDummy] run function dpm7:pvp/class/zerker/tick_leap

# Particle effects
execute as @a[tag=onFlurryChannel] at @s anchored eyes positioned ^ ^ ^0.5 run particle lava ^ ^ ^ 0.1 0.01 0.1 5 1
execute as @a[tag=onFlurryChannel] at @s positioned ^ ^ ^0.4 positioned ~ ~0.75 ~ run particle large_smoke ^-0.4 ^ ^ 0.02 0.01 0.02 0 1
execute as @a[tag=onFlurryChannel] at @s positioned ^ ^ ^0.4 positioned ~ ~0.75 ~ run particle large_smoke ^0.4 ^ ^ 0.02 0.01 0.02 0 1

execute as @a[tag=onFlurryEffect] at @s positioned ^ ^ ^0.4 positioned ~ ~0.75 ~ run particle dust 1.0 0.2 0.05 2.0 ^-0.4 ^ ^ 0.02 0.01 0.02 5 1
execute as @a[tag=onFlurryEffect] at @s positioned ^ ^ ^0.4 positioned ~ ~0.75 ~ run particle dust 1.0 0.2 0.05 2.0 ^0.4 ^ ^ 0.02 0.01 0.02 5 1

execute as @a[tag=onLeap] at @s positioned ~ ~0.15 ~ run particle dust 1.0 0.7 0.05 2.0 ^-0.4 ^ ^ 0.02 0.01 0.02 5 1
execute as @a[tag=onLeap] at @s positioned ~ ~0.15 ~ run particle dust 1.0 0.7 0.05 2.0 ^0.4 ^ ^ 0.02 0.01 0.02 5 1

execute as @a[tag=onSlamStart] at @s positioned ~ ~0.75 ~ run particle dust 0.4 0.05 0 2.0 ^ ^ ^ 0.2 0.1 0.2 1 5

execute as @a[tag=onSlam] at @s positioned ~ ~0.75 ~ run particle dust 0.8 0.3 0.05 2.0 ^-0.4 ^ ^ 0.02 0.01 0.02 1 1
execute as @a[tag=onSlam] at @s positioned ~ ~0.75 ~ run particle dust 0.8 0.3 0.05 2.0 ^0.4 ^ ^ 0.02 0.01 0.02 1 1