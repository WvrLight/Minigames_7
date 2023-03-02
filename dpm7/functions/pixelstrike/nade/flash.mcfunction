#Summons the flashbang object

execute at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4 2
execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 4 2
execute at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1
kill @s

summon marker ~ ~ ~ {CustomName:'{"text":"psFlashdummy"}'}
execute at @e[name=psFlashdummy] as @a[tag=psPlaying,distance=..60,gamemode=!spectator] run function dpm7:pixelstrike/nade/flash_check

kill @e[name=psFlashdummy]