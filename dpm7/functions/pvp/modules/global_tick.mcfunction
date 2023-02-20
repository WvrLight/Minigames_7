# Motion dummy removal
execute as @e[tag=motionDummy,tag=destroyable] run function dpm7:pvp/modules/motion_dummy_check

# Handling of Timers
scoreboard players remove @e[tag=onTimer,scores={tick=1..}] tick 1

# Classes
function dpm7:pvp/class/scout/tick
function dpm7:pvp/class/zerker/tick

# Reset rightClick
execute as @a[scores={rightClick=0..}] run scoreboard players reset @s rightClick

execute if score #class tick matches 1 run schedule function dpm7:pvp/modules/global_tick 1t