tellraw @a [{"selector":"@s","bold":true},{"text":" planted the ","color":"yellow","bold":false},{"text":"Bomb","color":"gold","bold":true},{"text":"!","color":"yellow","bold":false}]
clear @s minecraft:tnt{psBomb:1} 1 
scoreboard players reset @s psBomb

scoreboard players set bombPlanted psDummy 1

#Bomb
summon armor_stand ~ ~-0.4 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["psBomb"],ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b}]}