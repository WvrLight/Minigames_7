# Reset tracker objectives
scoreboard objectives add psSneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add psJump minecraft.custom:minecraft.jump
scoreboard objectives add psStamina food
scoreboard objectives add IAsneak minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add IAwalk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add IAsprint minecraft.custom:minecraft.sprint_one_cm

# PLAYER EFFECTS
effect give @a[tag=psPlaying] weakness infinite 255 true
effect give @a[tag=psPlaying] resistance infinite 255 true

# MATCH VARIABLES
scoreboard players set matchStarted psDummy 1
scoreboard players set Current_Round: psMain 0
scoreboard players set Defenders: psMain 0
scoreboard players set Attackers: psMain 0

# ECONOMY VARIABLES
clear @a[tag=psPlaying]
scoreboard players set @a[tag=psPlaying] psHealth 100
scoreboard players set @a[tag=psPlaying] psMoney 800
scoreboard players set @a[tag=psPlaying] psNadeMax 0
scoreboard players set @a[tag=psPlaying] pistolR 0
scoreboard players set @a[tag=psPlaying] psStamina 0
scoreboard players set loss psMoney 1350
scoreboard players set win psMoney 2100
scoreboard players set max psMoney 12000
scoreboard players set default psLossBonus 550
scoreboard players set CT psLossStreak 0
scoreboard players set T psLossStreak 0

scoreboard objectives setdisplay sidebar psMain

gamerule sendCommandFeedback false

title @a title [{"text":"Pixel","color":"blue","bold":true},{"text":"Strike","color":"gold","bold":true},{"text":"!","color":"yellow","bold":false}]

function dpm7:pixelstrike/game/tick2
function dpm7:pixelstrike/game/tick
function dpm7:pixelstrike/game/round/round_start