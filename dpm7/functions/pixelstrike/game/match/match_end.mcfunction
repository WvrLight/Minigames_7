# Remove tracker objectives
scoreboard objectives remove psSneak
scoreboard objectives remove psJump
scoreboard objectives remove IAsneak
scoreboard objectives remove IAwalk
scoreboard objectives remove IAsprint

# PLAYER EFFECTS
effect clear @a[tag=psPlaying] weakness
effect clear @a[tag=psPlaying] resistance

# Remove objects
kill @e[tag=psBomb]
kill @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:1b}}]
kill @e[tag=psFlash]
kill @e[tag=psSmoke]
kill @e[tag=psMolly]
kill @e[tag=psHE]
kill @e[name=psSmokeCloud]
kill @e[name=psMollyArea]
kill @e[name=psNade]

# DISPLAY TITLE
title @a title [{"text":"Pixel","color":"blue","bold":true},{"text":"Strike","color":"gold","bold":true},{"text":"!","color":"yellow","bold":false}]

execute if score matchWinner psDummy matches 1 run title @a subtitle [{"text":"Counter-Terrorists","color":"blue","bold":true},{"text":" win the match!","color":"yellow","bold":false}]
execute if score matchWinner psDummy matches 1 run tellraw @a [{"selector":"@a[team=psCT]","color":"blue","bold":true},{"text":" are your winners!","color":"yellow"}]
execute if score matchWinner psDummy matches 2 run title @a subtitle [{"text":"Terrorists","color":"gold","bold":true},{"text":" win the match!","color":"yellow","bold":false}]
execute if score matchWinner psDummy matches 2 run tellraw @a [{"selector":"@a[team=psT]","color":"gold","bold":true},{"text":" are your winners!","color":"yellow"}]

# MATCH VARIABLES
scoreboard objectives setdisplay sidebar
scoreboard players set matchStarted psDummy 0
scoreboard players set matchWinner psDummy 0
scoreboard players set roundEndTime psDummy 0
kill @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:1b}}]

# Reset players
execute as @a[tag=psPlaying] run attribute @s minecraft:generic.movement_speed base set 0.1

scoreboard players reset @a[tag=psPlaying] psHealth
scoreboard players reset @a[tag=psPlaying] psMoney
scoreboard players reset @a[tag=psPlaying] rightClick
scoreboard players reset @a[tag=psPlaying] spray
scoreboard players reset @a[tag=psPlaying] firing
scoreboard players reset @a[tag=psPlaying] firinghold2
scoreboard players reset @a[tag=psPlaying] raycast
scoreboard players reset @a[tag=psPlaying] raycast_hit
scoreboard players reset @a[tag=psPlaying] sniperR
scoreboard players reset @a[tag=psPlaying] shotgunR
scoreboard players reset @a[tag=psPlaying] pistolR
scoreboard players reset @a[tag=psPlaying] pistolR2
scoreboard players reset @a[tag=psPlaying] psAmmo
scoreboard players reset @a[tag=psPlaying] psAmmoMax
scoreboard players reset @a[tag=psPlaying] psAmmo2
scoreboard players reset @a[tag=psPlaying] psAmmoMax2
scoreboard players reset @a[tag=psPlaying] psPurchase
scoreboard players reset @a[tag=psPlaying] psSneak
scoreboard players reset @a[tag=psPlaying] psStep
scoreboard players reset @a[tag=psPlaying] psNadeMax
scoreboard players reset @a[tag=psPlaying] psReload
scoreboard players reset @a[tag=psPlaying] psReload2
scoreboard players reset @a[tag=psPlaying] psBomb

clear @a[tag=psPlaying]
effect clear @a[tag=psPlaying]
team leave @a[tag=psPlaying]
tag @a[tag=psPlaying] remove psPlaying

gamerule sendCommandFeedback true