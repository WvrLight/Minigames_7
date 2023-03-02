scoreboard players remove @s tick 1

execute if block ^ ^ ^ air run tp @s ^ ^ ^1 
#function dpm7:pvp/class/harbinger/levelabove
function dpm7:pvp/class/harbinger/levelbelow
particle dust 0.005 0.1 0.15 2 ~ ~0.3 ~ 0.7 0.3 0.7 0 25 normal
particle soul_fire_flame ~ ~ ~ 0.4 0.1 0.4 0 10 normal
playsound minecraft:entity.horse.step master @a[distance=..15] ~ ~ ~ 1 1

execute if entity @e[distance=..3.5,tag=!onHHorse,type=!minecraft:skeleton_horse,tag=!hitHorse] as @e[distance=..3.5,tag=!onHHorse,type=!minecraft:skeleton_horse,tag=!hitHorse] at @s run function dpm7:pvp/class/harbinger/horse_hit

execute if score @s tick matches 10.. positioned ^ ^1 ^2 run tp @e[tag=hitHorse,distance=..3] ~ ~ ~


#execute if score @s tick matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ air run function dpm7:pvp/class/harbinger/horse_move
execute if score @s tick matches 1 run kill @e[tag=hHorseLift,limit=1,sort=nearest]
execute if score @s tick matches 0 run ride @e[tag=onHHorse,sort=nearest,limit=1] dismount 
execute if score @s tick matches 0 run tag @e[tag=onHHorse,sort=nearest,limit=1] remove onHHorse
execute if score @s tick matches 0 run tag @e[tag=hitHorse] remove hitHorse
execute if score @s tick matches 0 run tp @s ~ -100 ~
execute if score @s tick matches 0 run kill @s