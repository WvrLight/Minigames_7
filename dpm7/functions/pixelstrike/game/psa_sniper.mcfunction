execute as @s[scores={rightClick=1,sniperR=1..}] run scoreboard players reset @s rightClick
execute as @s[scores={rightClick=1..,psReload=0,sniperR=0,psAmmo=1..}] at @s anchored eyes positioned ~ ~-0.05 ~ run function dpm7:pixelstrike/weapon/sniper