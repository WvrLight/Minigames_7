function dpm7:pvp/class/zerker/slam_cooldown

tag @s add onSlamStart

# Summon motion dummy if not in leap
execute at @s run function dpm7:pvp/modules/motion_dummy
tag @e[tag=newDummy] add slamDummy
tag @e[tag=newDummy] add onTimer

# Detect if on air
execute if block ~ ~-3 ~ air as @e[tag=newDummy, tag=slamDummy] run function dpm7:pvp/class/zerker/slam_hover

# Detect if on ground
execute unless block ~ ~-3 ~ air as @e[tag=newDummy, tag=slamDummy] run function dpm7:pvp/class/zerker/slam_start_ground

execute run tag @e[tag=newDummy] remove newDummy