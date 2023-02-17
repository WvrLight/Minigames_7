
scoreboard players operation #temp id = @s id
execute as @e[tag=hookDummy] if score @s id = #temp id run kill @s
#execute as @e[tag=motionDummy] if score @s id = #temp id run kill @s
scoreboard players reset #temp id

tag @s remove onHook
tag @s add postHook
tag @e[tag=motionDummy,limit=1,sort=nearest] add hookEndDummy
tag @e[tag=motionDummy,limit=1,sort=nearest] add destroyable
ride @s mount @e[tag=motionDummy,limit=1,sort=nearest]
