# Used to bypass the cooldown system and return the used skill instantly
# Add tag 'pvpDebug' to player to access this

kill @e[tag=newCooldownDummy]

scoreboard players operation #temp id = @s id
scoreboard players operation #temp skillId = @s skillId
scoreboard players operation #temp slot = @s slot
function dpm7:pvp/modules/cooldown_remove_give