#Pistol right click
execute as @s[scores={rightClick=1..,pistolR=1..}] run scoreboard players reset @s rightClick
execute as @s[scores={rightClick=1..,pistolR=0,psReload2=0,psAmmo2=1..}] at @s anchored eyes positioned ~ ~-0.05 ~ run function dpm7:pixelstrike/weapon/pistol