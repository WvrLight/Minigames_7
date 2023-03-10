# Checks current state of player
# Handles slam rightClick interactions between zerker rightClicks

scoreboard players reset @s rightClick

execute if entity @s[tag=!onLeap, tag=!onFlurryChannel, tag=!onFlurryEffect] run function dpm7:pvp/class/zerker/slam_start
execute if entity @s[tag=onLeap] run tag @s add onSlam
execute if entity @s[tag=onLeap] run tag @s remove onSlamStart
execute if entity @s[tag=onLeap] run function dpm7:pvp/class/zerker/slam_cooldown
execute if entity @s[tag=onLeap] at @s run playsound entity.creeper.primed master @a ~ ~ ~ 2 2