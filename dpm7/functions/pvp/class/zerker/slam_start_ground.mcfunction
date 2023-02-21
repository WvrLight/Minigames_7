# Status
effect give @p levitation 1 32 true

# Effects
execute at @s run playsound entity.ravager.attack master @a ~ ~ ~ 3 0.75
execute at @s run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 3 1.5
playsound minecraft:entity.camel.dash master @a ~ ~ ~ 3 1

# Modify motion dummy
scoreboard players set @s tick 7
tag @s add slamStartDummy