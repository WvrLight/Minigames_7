#1 - CT win
#2 - T win

scoreboard players set roundStarted psDummy 0

#CT WIN
execute if score roundWinner psDummy matches 1 run function dpm7:pixelstrike/game/round/round_end_ct
#T WIN
execute if score roundWinner psDummy matches 2 run function dpm7:pixelstrike/game/round/round_end_t

execute as @a[tag=psPlaying] if score @s psMoney > max psMoney run scoreboard players operation @s psMoney = max psMoney

scoreboard players set roundWinner psDummy 0
#roundEndTime is round end dummy
scoreboard players set roundEndTime psDummy 80