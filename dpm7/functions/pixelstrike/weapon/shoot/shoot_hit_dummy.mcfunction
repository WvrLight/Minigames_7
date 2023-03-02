#Create a shot dummy:
#summon skeleton ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["psShotDummy"]}

particle dust 0.6 0.0 0.0 0.8 ~ ~ ~ 0.1 0.1 0.1 1 10

#Nearest player to raycast gets tagged
tag @e[sort=nearest,limit=1] add psHit

#execute at @e[tag=psHit] run summon area_effect_cloud ~ ~2 ~ {Age:2147483647,Tags:["hitdummy"]}

execute if entity @s[nbt={SelectedItem:{tag:{rifle:1}}}] if entity @e[tag=psHit,distance=1.6..] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/rifle_hs
execute if entity @s[nbt={SelectedItem:{tag:{rifle:1}}}] if entity @e[tag=psHit,distance=0.75..1.6] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/rifle
execute if entity @s[nbt={SelectedItem:{tag:{rifle:1}}}] if entity @e[tag=psHit,distance=..0.75] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/rifle_foot

execute if entity @s[nbt={SelectedItem:{tag:{sniper:1}}}] if entity @e[tag=psHit,distance=1.6..] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/sniper
execute if entity @s[nbt={SelectedItem:{tag:{sniper:1}}}] if entity @e[tag=psHit,distance=0.75..1.6] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/sniper
execute if entity @s[nbt={SelectedItem:{tag:{sniper:1}}}] if entity @e[tag=psHit,distance=..0.75] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/sniper_foot

execute if entity @s[nbt={SelectedItem:{tag:{shotgun:1}}}] if entity @e[tag=psHit,distance=1.6..] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/shotgun_hs
execute if entity @s[nbt={SelectedItem:{tag:{shotgun:1}}}] if entity @e[tag=psHit,distance=0.75..1.6] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/shotgun
execute if entity @s[nbt={SelectedItem:{tag:{shotgun:1}}}] if entity @e[tag=psHit,distance=..0.75] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/shotgun

execute if entity @s[nbt={SelectedItem:{tag:{smg:1}}}] if entity @e[tag=psHit,distance=1.6..] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/smg_hs
execute if entity @s[nbt={SelectedItem:{tag:{smg:1}}}] if entity @e[tag=psHit,distance=0.75..1.6] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/smg
execute if entity @s[nbt={SelectedItem:{tag:{smg:1}}}] if entity @e[tag=psHit,distance=..0.75] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/smg_foot

execute if entity @s[nbt={SelectedItem:{tag:{pistol:1}}}] if entity @e[tag=psHit,distance=1.6..] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/pistol_hs
execute if entity @s[nbt={SelectedItem:{tag:{pistol:1}}}] if entity @e[tag=psHit,distance=0.75..1.6] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/pistol
execute if entity @s[nbt={SelectedItem:{tag:{pistol:1}}}] if entity @e[tag=psHit,distance=..0.75] store result score @s DMGroll run loot give @s loot dpm7:pixelstrike/pistol_foot

#Headshot sound
execute if entity @e[tag=psHit,distance=1.6..] at @e[tag=psHit,distance=1.6..] run playsound minecraft:entity.iron_golem.damage master @a ~ ~ ~ 2 1

#Set bullet as recently hit a player
scoreboard players set @s raycast_hit 3

#Show damage
tellraw @s [{"text":"Damage: ","color":"red","bold":true},{"score":{"name":"@s","objective":"DMGroll"},"color":"white","bold":false}]

clear @s stone
#execute if entity @s[nbt={SelectedItem:{tag:{shotgun:1}}}] run tag @e[tag=psHit] remove psHit
tag @e[tag=psHit] remove psHit
#kill @e[tag=hitdummy]