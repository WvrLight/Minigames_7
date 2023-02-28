playsound minecraft:entity.illusioner.prepare_blindness master @a[distance=..15] ~ ~ ~ 1 1.5

clear @s minecraft:carrot_on_a_stick{cclashSonic:1} 1

scoreboard players set @s cclashSonictime 111

team add cclashSonic
team modify cclashSonic color aqua
team join cclashSonic @s

scoreboard players remove @s cclashCSpells 1