tellraw @a [{"text":"Terrorists","color":"gold","bold":true},{"text":" win!","color":"yellow","bold":false}]
scoreboard players add Attackers: psMain 1

#CT loss bonus
execute as @a[team=psCT] run scoreboard players operation @s psMoney += loss psMoney
execute if score CT psLossStreak matches ..4 run scoreboard players add CT psLossStreak 1
scoreboard players operation CT psLossBonus = default psLossBonus
scoreboard players operation CT psLossBonus *= CT psLossStreak
execute as @a[team=psCT] run scoreboard players operation @s psMoney += CT psLossBonus

#T win bonus
execute as @a[team=psT] run scoreboard players operation @s psMoney += win psMoney
execute if score T psLossStreak matches 1.. run scoreboard players remove T psLossStreak 1
scoreboard players operation T psLossBonus = default psLossBonus
scoreboard players operation T psLossBonus *= T psLossStreak
execute as @a[team=psT] run scoreboard players operation @s psMoney += T psLossBonus