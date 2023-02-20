# Class variables
scoreboard players set #gravity motionY 1000
scoreboard players set #hookTensionMulti motionY 3

# Enable tick functions
scoreboard players set #class tick 1

function dpm7:pvp/modules/global_tick
schedule function dpm7:pvp/modules/global_tick2 1t
schedule function dpm7:pvp/modules/global_tick20 20t