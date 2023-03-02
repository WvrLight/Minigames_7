execute at @e[tag=psBomb] run playsound minecraft:entity.blaze.death master @a ~ ~ ~ 3 2
kill @e[tag=psBomb]
scoreboard players set @s psBomb 0

#UI
tellraw @a [{"selector":"@s","bold":true},{"text":" successfully ","color":"yellow","bold":false},{"text":"defused","color":"blue","bold":false},{"text":" the ","color":"yellow","bold":false},{"text":"Bomb","color":"gold","bold":true},{"text":"!","color":"yellow","bold":false}]

#CT win
scoreboard players set roundWinner psDummy 1