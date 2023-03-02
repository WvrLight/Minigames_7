function dpm7:pixelstrike/item/give_he
tellraw @s [{"text":"Purchased","color":"yellow","bold":true},{"text":" [Frag Grenade]","color":"dark_green"}]
scoreboard players add @s psNadeMax 1
scoreboard players remove @s psMoney 300