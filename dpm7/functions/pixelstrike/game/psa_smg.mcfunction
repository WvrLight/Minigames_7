# UNUSED


execute as @s[scores={firing=1..,psAmmo=1..}] at @s anchored eyes positioned ~ ~-0.05 ~ run function dpm7:pixelstrike/weapon/smg
execute as @s[scores={rightClick=1..,firing=0,psReload=0}] run scoreboard players set @s firing 1