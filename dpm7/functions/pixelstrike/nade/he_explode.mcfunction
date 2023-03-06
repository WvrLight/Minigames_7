#Summons the HE grenade

execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4 1
particle explosion ~ ~0.5 ~ 0 0 0 1 1
particle dust 0.3 0.3 0.3 4.0 ~ ~1 ~ 0.65 0.65 0.65 0 20
tp @s ~ -100 ~
kill @s

summon marker ~ ~0.5 ~ {CustomName:'{"text":"psHEdummy"}'}
execute at @e[name=psHEdummy] as @a[tag=psPlaying,distance=..8,gamemode=!spectator] run function dpm7:pixelstrike/nade/he_check

kill @e[name=psHEdummy]