# Summons a cooldown dummy after skill usage that handles all cooldown data
scoreboard players set @s rightClick 0
execute store result score @s slot run data get entity @s SelectedItemSlot 1
scoreboard players operation @s cooldown *= #10 integers

# Store skill information
summon marker ~ ~ ~ {Tags:["cooldownDummy","newCooldownDummy"]}
scoreboard players operation @e[tag=newCooldownDummy] cooldown = @s cooldown
scoreboard players operation @e[tag=newCooldownDummy] slot = @s slot
scoreboard players operation @e[tag=newCooldownDummy] id = @s id
scoreboard players operation @e[tag=newCooldownDummy] skillId = @s skillId

# Run cooldown slot system
execute if entity @s[tag=pvpDebug] run function dpm7:pvp/modules/cooldown_dummy_debug
execute if entity @s[tag=!pvpDebug] run function dpm7:pvp/modules/cooldown_give
execute if entity @s[tag=!pvpDebug] run tag @e[tag=newCooldownDummy] remove newCooldownDummy

# Reset player stats
scoreboard players reset @s skillId
scoreboard players reset @s cooldown
scoreboard players reset @s slot
