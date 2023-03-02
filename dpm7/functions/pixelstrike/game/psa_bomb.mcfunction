#summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["psBombsite"],CustomName:'{"text":"psDummy"}'}

#T bomb plant
execute as @a[nbt={SelectedItem:{tag:{psBomb:1}}},team=psT,scores={psSneak=1..}] at @s if entity @e[tag=psBombsite,distance=..5] run scoreboard players add @s psBomb 1
execute as @a[team=psT,scores={psBomb=2..}] run title @s title {"text":" "}
execute as @a[team=psT,scores={psBomb=2..}] run title @s subtitle {"text":"Planting...","color":"gray","bold":true}
execute as @a[team=psT,scores={psBomb=2..}] run title @s times 0 5 0
execute at @a[team=psT,scores={psBomb=1}] run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 2 1
execute as @a[team=psT,scores={psBomb=35..}] at @s run function dpm7:pixelstrike/bomb/plant

#CT bomb defuse
execute as @a[team=psCT,gamemode=!spectator,scores={psSneak=1..}] at @s if entity @e[tag=psBomb,distance=..1] run scoreboard players add @s psBomb 1
execute as @a[team=psCT,scores={psBomb=2..}] run title @s title {"text":" "}
execute as @a[team=psCT,scores={psBomb=2..}] run title @s subtitle {"text":"Defusing...","color":"gray","bold":true}
execute as @a[team=psCT,scores={psBomb=2..}] run title @s times 0 5 0
execute as @a[team=psCT,scores={psBomb=2}] at @s run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 0
execute as @a[team=psCT,scores={psBomb=50..}] run function dpm7:pixelstrike/bomb/defuse

#Bomb plant
execute if score bombPlanted psDummy matches 1 as @e[tag=psBomb] run function dpm7:pixelstrike/game/psa_bomb_plant

#Check if plant/defuse was cancelled
execute as @a[scores={psBomb=2..,psSneak=0}] run scoreboard players set @s psBomb 0
execute as @a[scores={psBomb=1..,firing=1}] run scoreboard players set @s psBomb 0
execute as @a[scores={psBomb=1..,firinghold2=2}] run scoreboard players set @s psBomb 0