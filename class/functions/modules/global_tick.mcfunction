# General
execute as @e[tag=motionDummy,tag=destroyable] run function class:modules/motion_dummy_check

# Classes
function class:hook/tick
execute as @e[tag=leapDummy] run function class:zerker/tick

execute if score #class tick matches 1 run schedule function class:modules/global_tick 1t