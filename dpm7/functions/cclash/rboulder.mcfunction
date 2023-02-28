playsound minecraft:entity.guardian.attack master @a[distance=..15] ~ ~ ~ 100 1.5

clear @s minecraft:carrot_on_a_stick{cclashRboulder:1} 1

scoreboard players set @s cclashRboutime 45
effect give @s minecraft:slowness 5 100 true

scoreboard players remove @s cclashCSpells 1