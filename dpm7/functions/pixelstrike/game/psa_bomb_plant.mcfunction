execute at @s run particle smoke ~ ~1 ~ 0.01 0.2 0.01 0 1
scoreboard players add @s psDummy 1
scoreboard players add @s psBomb 1

#Sound cues based on bomb duration
execute if entity @s[scores={psDummy=5..,psBomb=300..}] at @s run playsound minecraft:block.note_block.xylophone master @a ~ ~ ~ 2 0.5
execute if entity @s[scores={psDummy=10..}] at @s run playsound minecraft:block.note_block.xylophone master @a ~ ~ ~ 2 1
execute if entity @s[scores={psDummy=10..}] run scoreboard players set @s psDummy 0
execute if entity @s[scores={psBomb=400..}] at @s run function dpm7:pixelstrike/bomb/explode