particle minecraft:explosion_emitter ~ ~ ~ 4 2 4 1 20
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 10 1
execute as @a[distance=..15,gamemode=!spectator,tag=psPlaying] run function dpm7:pixelstrike/game/death
kill @s

#UI
tellraw @a [{"text":"The ","color":"yellow"},{"text":"Bomb ","color":"gold"},{"text":"has exploded!"}]

#T wins
scoreboard players set roundWinner psDummy 2