playsound minecraft:entity.horse.breathe master @a[distance=..15] ~ ~ ~ 100 0

clear @s minecraft:carrot_on_a_stick{cclashFlight:1} 1

effect give @s minecraft:levitation 1 17 true
item replace entity @s armor.chest with elytra
scoreboard players set @s cclashFlighttime 120

scoreboard players remove @s cclashCSpells 1