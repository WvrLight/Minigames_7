#Check for match winner
execute if score Defenders: psMain = psGoal psDummy run scoreboard players set matchWinner psDummy 1
execute if score Attackers: psMain = psGoal psDummy run scoreboard players set matchWinner psDummy 2 
scoreboard players remove roundEndTime psDummy 1

execute if score roundEndTime psDummy matches 1 run function dpm7:pixelstrike/game/round/round_start

execute if score matchWinner psDummy matches 1.. run function dpm7:pixelstrike/game/match/match_end