# Class variables
scoreboard players set #gravity motionY 1000
scoreboard players set #hookTensionMulti motionY 3

# Cooldown system variables
scoreboard objectives add rightClickId dummy
scoreboard objectives add slot dummy
scoreboard objectives add cooldown dummy

# Enable tick functions
scoreboard players set #class tick 1

function dpm7:pvp/modules/global_tick
schedule function dpm7:pvp/modules/global_tick2 1t