#Increments round time per 2 ticks
scoreboard players add roundTime psDummy 1

execute if score Round_Time: psMain matches 0.. run scoreboard players set roundWinner psDummy 1
execute if score CTplayers psDummy matches ..0 run scoreboard players set roundWinner psDummy 2
execute if score bombPlanted psDummy matches ..0 if score Tplayers psDummy matches 0 run scoreboard players set roundWinner psDummy 1

execute if score RoundEnd psDummy matches 1 if score roundWinner psDummy matches 1.. run function dpm7:pixelstrike/game/round/round_end