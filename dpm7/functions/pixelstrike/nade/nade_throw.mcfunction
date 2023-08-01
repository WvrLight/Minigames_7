scoreboard players reset @s rightClick

summon marker ^ ^ ^20 {Tags:["direction"]}

#Velocity
execute store result score @s posX run data get entity @s Pos[0] 10
execute store result score @s posY run data get entity @s Pos[1] 10
execute store result score @s posZ run data get entity @s Pos[2] 10

execute as @e[tag=direction,distance=19.8..20.2] store result score @s posX run data get entity @s Pos[0] 10
execute as @e[tag=direction,distance=19.8..20.2] store result score @s posY run data get entity @s Pos[1] 10
execute as @e[tag=direction,distance=19.8..20.2] store result score @s posZ run data get entity @s Pos[2] 10

tp @e[tag=direction,distance=19.8..20.2] @s

scoreboard players operation @s posX -= @e[tag=direction,limit=1,sort=nearest] posX
scoreboard players operation @s posY -= @e[tag=direction,limit=1,sort=nearest] posY
scoreboard players operation @s posZ -= @e[tag=direction,limit=1,sort=nearest] posZ

kill @e[tag=direction,limit=1,sort=nearest]

summon rabbit ~ ~-100 ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:0b,Age:-1000,CustomName:'{"text":"psNade"}',Tags:["new"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:1000,ShowParticles:0b}]}
#execute anchored eyes run summon armor_stand ^ ^ ^0.5 {Invisible:1b,Invulnerable:1b,Small:1b,CustomName:'{"text":"psNade"}'}
#data modify entity @e[name=psNade,tag=new] Position set from entity @s Position
execute at @s anchored eyes run tp @e[name=psNade,tag=new] ^ ^ ^0.5
data modify entity @e[name=psNade,tag=new,limit=1,sort=nearest] Rotation set from entity @s Rotation
playsound minecraft:entity.snowball.throw master @a ~ ~ ~ 0.5 0.5
#scoreboard players set @e[type=armor_stand,name=psNade,limit=1,sort=nearest] psBounceH 0
#tag @e[type=armor_stand,name=psNade,limit=1,sort=nearest] add bounce
execute as @e[name=psNade,tag=new] store result entity @s Motion[0] double -0.025 run scoreboard players get @p posX
execute as @e[name=psNade,tag=new] store result entity @s Motion[1] double -0.015 run scoreboard players get @p posY
execute as @e[name=psNade,tag=new] store result entity @s Motion[2] double -0.025 run scoreboard players get @p posZ

#Remove grenade from player
execute if score @s psNadeMax matches 1.. run scoreboard players remove @s psNadeMax 1

#Determine grenade type
# execute if entity @s[nbt={SelectedItem:{tag:{psSmoke:1}}}] run tag @e[type=armor_stand,name=psNade,limit=1,sort=nearest] add psSmoke
# execute if entity @s[nbt={SelectedItem:{tag:{psSmoke:1}}}] run clear @s minecraft:carrot_on_a_stick{psSmoke:1} 1
# execute if entity @s[nbt={SelectedItem:{tag:{psFlash:1}}}] run tag @e[type=armor_stand,name=psNade,limit=1,sort=nearest] add psFlash
# execute if entity @s[nbt={SelectedItem:{tag:{psFlash:1}}}] run clear @s minecraft:carrot_on_a_stick{psFlash:1} 1
execute if entity @s[nbt={SelectedItem:{tag:{psMolly:1}}}] run tag @e[name=psNade,tag=new] add psMolly
execute if entity @s[nbt={SelectedItem:{tag:{psMolly:1}}}] run clear @s minecraft:carrot_on_a_stick{psMolly:1} 1
execute if entity @s[nbt={SelectedItem:{tag:{psHE:1}}}] run tag @e[name=psNade,tag=new] add psHE
execute if entity @s[nbt={SelectedItem:{tag:{psHE:1}}}] run clear @s minecraft:carrot_on_a_stick{psHE:1} 1

tag @e[name=psNade,tag=new] remove new