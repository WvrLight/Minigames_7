# Skill cooldown details
scoreboard players set @s cooldown 15
scoreboard players set @s skillId 3
clear @s carrot_on_a_stick{flurry:1}
execute at @s run function dpm7:pvp/modules/cooldown_dummy

tag @s add onFlurryChannel

playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 3 1.25
playsound minecraft:entity.warden.sonic_charge master @a ~ ~ ~ 3 0.9

effect give @p slowness infinite 2 true
effect give @s slow_falling infinite 2 true
scoreboard players set @s tick 34

tag @s add onTimer
tag @s add onFlurryChannel