#Remove counter
scoreboard players remove @s[scores={psStep=1..}] psStep 1

#Add counter if player is starting to walk
execute as @s[scores={psStep=..8}] if score @s IAwalk matches 1.. run scoreboard players add @s psStep 2
execute as @s[scores={psStep=8..10}] if score @s IAwalk matches 1.. run scoreboard players set @s psStep 18

#SOUNDS
#Walk
execute as @s[scores={psStep=17}] if score @s IAwalk matches 1.. at @s run playsound minecraft:block.stone.step master @a ~ ~ ~ 1 1
execute as @s[scores={psStep=11}] if score @s IAwalk matches 1.. run scoreboard players set @s psStep 18

#Sprint
execute as @s[scores={psStep=..11}] unless score @s psSneak matches 1 if score @s IAsprint matches 1.. at @s run playsound minecraft:block.stone.hit master @a ~ ~ ~ 1 1
execute as @s[scores={psStep=..11}] if score @s IAsprint matches 1.. if score @s psSneak matches 0 run scoreboard players set @s psStep 16

#Reset step counter
execute as @s[scores={psStep=..11}] if score @s IAwalk matches 0 run scoreboard players set @s psStep 0

#Jump
#End of jump
execute as @s[scores={psStep=19..}] if entity @s[gamemode=!spectator,nbt={OnGround:1b}] if score @s psStep matches 30.. at @s run playsound minecraft:block.stone.fall master @a ~ ~ ~ 1 0
execute if score bhopEnabled psDummy matches 0 as @s[scores={psStep=19..}] if entity @s[gamemode=!spectator,nbt={OnGround:1b}] if score @s psStep matches 27.. run effect give @s jump_boost 1 137 true
#execute if score bhopEnabled psDummy matches 0 as @s[scores={psStep=19..}] if entity @s[gamemode=!spectator,nbt={OnGround:1b}] if score @s psStep matches 27.. run effect give @s slowness 1 3 true
execute as @s[scores={psStep=19..}] run scoreboard players add @s psStep 2
execute as @s[scores={psStep=19..}] if entity @s[gamemode=!spectator,nbt={OnGround:1b}] run scoreboard players set @s psStep 0

#Start of jump
execute as @s[scores={psStep=..18}] if entity @s[gamemode=!spectator,nbt={OnGround:0b},scores={psJump=1..}] if score @s psSneak matches 0 at @s run playsound minecraft:entity.goat.long_jump master @a ~ ~ ~ 0.4 0.5
execute as @s[scores={psStep=..18}] if entity @s[gamemode=!spectator,nbt={OnGround:0b}] run scoreboard players set @s psStep 20