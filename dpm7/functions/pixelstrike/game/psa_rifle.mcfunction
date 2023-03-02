# UNUSED

scoreboard players add @s[scores={firing=1..}] firinghold2 1
#firinghold2: After 2 ticks, anyone firing their rifle will start spraying
execute as @s[scores={firing=1..,firinghold2=1..,psAmmo=1..}] at @s anchored eyes positioned ~ ~-0.05 ~ run function dpm7:pixelstrike/weapon/spray
execute if score @s firinghold2 matches 2.. run scoreboard players set @s firinghold2 0

execute as @s[scores={rightClick=1..,firing=0,psReload=0}] run scoreboard players set @s firing 1