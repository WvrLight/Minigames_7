# Initial hook cast
# Will check first if player is looking at a nearby block
# Runs hook_start when a block is detected

scoreboard players set @s raycast 0
execute as @s at @s anchored eyes positioned ^ ^ ^1 run function dpm7:pvp/class/scout/hook_raycast_check

scoreboard players set @s rightClick 0