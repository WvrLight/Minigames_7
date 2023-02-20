
scoreboard players operation #temp id = @s id
execute as @e[tag=hookDummy] if score @s id = #temp id at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 2 1.5
execute as @e[tag=hookDummy] if score @s id = #temp id run kill @s
#execute as @e[tag=motionDummy] if score @s id = #temp id run kill @s
scoreboard players reset #temp id

# Restore dummy motion
ride @s mount @e[tag=motionDummy,limit=1,sort=nearest]
execute as @e[tag=motionDummy,limit=1,sort=nearest] run function dpm7:pvp/class/scout/hook_end_motion

tag @s remove onHook
tag @s add postHook
tag @e[tag=motionDummy,limit=1,sort=nearest] add hookEndDummy
tag @e[tag=motionDummy,limit=1,sort=nearest] add destroyable
