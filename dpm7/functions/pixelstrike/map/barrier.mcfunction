summon marker ~ ~ ~ {PersistenceRequired:1b,Tags:["psBarrierDummy"],CustomName:'{"text":"psDummy"}'}
execute as @e[tag=psBarrierDummy,limit=1,sort=nearest] run scoreboard players operation @s psMap = psMap psDummy
tp @e[tag=psBarrierDummy,limit=1,sort=nearest] @s