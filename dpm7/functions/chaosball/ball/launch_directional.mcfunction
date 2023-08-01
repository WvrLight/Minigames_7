summon marker ^ ^ ^20 {Tags:["direction"]}

#Velocity
execute store result score @s posX run data get entity @s Pos[0] 10
execute store result score @s posY run data get entity @s Pos[1] 10
execute store result score @s posZ run data get entity @s Pos[2] 10

execute as @e[tag=direction,distance=19.8..20.2] store result score @s posX run data get entity @s Pos[0] 10
execute as @e[tag=direction,distance=19.8..20.2] store result score @s posY run data get entity @s Pos[1] 10
execute as @e[tag=direction,distance=19.8..20.2] store result score @s posZ run data get entity @s Pos[2] 10

tp @e[tag=direction,distance=19.8..20.2] @s

scoreboard players operation @s posX -= @e[tag=direction,limit=1,sort=nearest] posX
scoreboard players operation @s posY -= @e[tag=direction,limit=1,sort=nearest] posY
scoreboard players operation @s posZ -= @e[tag=direction,limit=1,sort=nearest] posZ

kill @e[tag=direction,limit=1,sort=nearest]


#playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 0.5 0.5

execute as @e[tag=ball] store result entity @s Motion[0] double -0.025 run scoreboard players get @p posX
execute as @e[tag=ball] store result entity @s Motion[1] double -0.015 run scoreboard players get @p posY
execute as @e[tag=ball] store result entity @s Motion[2] double -0.025 run scoreboard players get @p posZ