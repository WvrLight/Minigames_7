playsound minecraft:entity.evoker.cast_spell master @a[distance=..15] ~ ~ ~ 100 1.5

clear @s minecraft:carrot_on_a_stick{cclashExhil:1} 1

scoreboard players set @s cclashExhiltime 91

team add cclashExhil
team modify cclashExhil color light_purple
team join cclashExhil @s

scoreboard players remove @s cclashCSpells 1