# Store temp id
scoreboard players operation #temp id = @s id
execute as @a[tag=onSlamStart] if score @s id = #temp id run effect give @p levitation 1 255 true

execute at @s run playsound entity.creeper.primed master @a ~ ~ ~ 2 2

# Modify motion dummy
scoreboard players set @s tick 16
tag @s add slamHoverDummy

# TP motion dummy to player
execute at @s as @a if score @s id = #temp id run tp @e[tag=slamHoverDummy, limit=1, sort=nearest] @s
data modify entity @s NoGravity set value 1

tag @s remove slamStartDummy

scoreboard players reset #temp