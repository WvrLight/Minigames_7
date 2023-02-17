tag @s add m7

scoreboard players add #playerCount id 1
scoreboard players operation @s id = #playerCount id

tellraw @a [{"text":"Welcome ","color":"white","bold":false},{"selector":"@s","color":"gold","bold":true},{"text":" to ","color":"white","bold":false},{"text":"Minigames","color":"dark_red","bold":true},{"text":"_7","color":"aqua","bold":true},{"text":"!","color":"white","bold":false}]