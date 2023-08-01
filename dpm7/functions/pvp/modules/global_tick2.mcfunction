# Classes
function dpm7:pvp/class/scout/tick2
function dpm7:pvp/class/zerker/tick2
function dpm7:pvp/class/harbinger/tick2

# Cooldown
execute as @e[tag=cooldownDummy] run function dpm7:pvp/modules/cooldown_check

execute if score pvp tick matches 1 run schedule function dpm7:pvp/modules/global_tick2 2t