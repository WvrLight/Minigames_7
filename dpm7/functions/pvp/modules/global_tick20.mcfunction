# Cooldown
execute as @e[tag=cooldownDummy] run function dpm7:pvp/modules/cooldown_remove

execute if score #class tick matches 1 run schedule function dpm7:pvp/modules/global_tick20 20t