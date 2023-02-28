playsound minecraft:block.ender_chest.open master @a[distance=..15] ~ ~ ~ 1 0
playsound minecraft:entity.evoker.prepare_summon master @a[distance=..15] ~ ~ ~ 100 1

clear @s minecraft:carrot_on_a_stick{cclashAerruption:1} 1

scoreboard players set @s cclashAerruption 40

scoreboard players remove @s cclashCSpells 1