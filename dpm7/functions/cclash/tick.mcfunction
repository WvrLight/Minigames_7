execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{swap:1}}}] at @s run function dpm7:cclash/swap

execute as @a[scores={rightClick=1}] at @s if entity @e[tag=cclashPice,distance=..2.5] run tellraw @s {"text":"Unable to cast spells while in Prison of Ice.","color":"red"}
execute as @a[scores={rightClick=1}] at @s if entity @e[tag=cclashPice,distance=..2.5] run playsound minecraft:entity.player.attack.strong master @s ~ ~ ~ 100 0
execute as @a[scores={rightClick=1}] at @s if entity @e[tag=cclashPice,distance=..2.5] run scoreboard players set @s rightClick 0

execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashSingvus:1}}}] at @s if score @s cclashCasted matches 3 run tellraw @s ["",{"text":"Conjurer Orbs ","color":"aqua"},{"text":"queue is full. ","color":"red"},{"text":"Please cast ","color":"red"},{"text":"Conjure or Clear Queue","color":"aqua"},{"text":" to clear queue.","color":"red"}]
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashDouzol:1}}}] at @s if score @s cclashCasted matches 3 run tellraw @s ["",{"text":"Conjurer Orbs ","color":"aqua"},{"text":"queue is full. ","color":"red"},{"text":"Please cast ","color":"red"},{"text":"Conjure or Clear Queue","color":"aqua"},{"text":" to clear queue.","color":"red"}]
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashTrixios:1}}}] at @s if score @s cclashCasted matches 3 run tellraw @s ["",{"text":"Conjurer Orbs ","color":"aqua"},{"text":"queue is full. ","color":"red"},{"text":"Please cast ","color":"red"},{"text":"Conjure or Clear Queue","color":"aqua"},{"text":" to clear queue.","color":"red"}]

execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashSingvus:1}}}] at @s if score @s cclashCasted matches 3 run playsound minecraft:entity.player.attack.strong master @s ~ ~ ~ 100 0
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashDouzol:1}}}] at @s if score @s cclashCasted matches 3 run playsound minecraft:entity.player.attack.strong master @s ~ ~ ~ 100 0
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashTrixios:1}}}] at @s if score @s cclashCasted matches 3 run playsound minecraft:entity.player.attack.strong master @s ~ ~ ~ 100 0

execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashSingvus:1}}}] at @s if score @s cclashCasted matches 0..2 run function dpm7:cclash/singvus
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashDouzol:1}}}] at @s if score @s cclashCasted matches 0..2 run function dpm7:cclash/douzol
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashTrixios:1}}}] at @s if score @s cclashCasted matches 0..2 run function dpm7:cclash/trixios

execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashConjure:1}}}] at @s if score @s cclashCooldown matches 1.. run tellraw @s ["",{"text":"Conjure ","color":"aqua"},{"text":"still on cooldown. ","color":"red"}]
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashConjure:1}}}] at @s if score @s cclashCooldown matches 1.. run playsound minecraft:entity.player.attack.strong master @s ~ ~ ~ 100 0

execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashConjure:1}}}] at @s if score @s cclashCSpells matches 3 if score @s cclashCooldown matches 0 run tellraw @s ["",{"text":"Conjure ","color":"aqua"},{"text":"can not be casted as you can only have a maximum of 3 spells. ","color":"red"}]
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashConjure:1}}}] at @s if score @s cclashCSpells matches 3 if score @s cclashCooldown matches 0 run playsound minecraft:entity.player.attack.strong master @s ~ ~ ~ 100 0

execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashConjure:1}}}] at @s if score @s cclashCSpells matches 0..2 if score @s cclashCooldown matches 0 run function dpm7:cclash/conjure

execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashClear:1}}}] at @s run function dpm7:cclash/clear

execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashMearth:1}}}] at @s run function dpm7:cclash/mearth
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashFball:1}}}] at @s run function dpm7:cclash/fball
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashPball:1}}}] at @s run function dpm7:cclash/pball

execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashRboulder:1}}}] at @s run function dpm7:cclash/rboulder
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashFlight:1}}}] at @s run function dpm7:cclash/flight
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashFflash:1}}}] at @s run function dpm7:cclash/fflash

execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashExhil:1}}}] at @s run function dpm7:cclash/exhil
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashSonic:1}}}] at @s run function dpm7:cclash/sonic
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashAearth:1}}}] at @s run function dpm7:cclash/aearth

execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashEarthquake:1}}}] at @s run function dpm7:cclash/earthquake
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashFbeam:1}}}] at @s run function dpm7:cclash/fbeam
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashSlightning:1}}}] at @s run function dpm7:cclash/slightning

execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashIspikes:1}}}] at @s run function dpm7:cclash/ispikes
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashGmend:1}}}] at @s run function dpm7:cclash/gmend
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashMeteor:1}}}] at @s run function dpm7:cclash/meteor

execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashSearth:1}}}] at @s run function dpm7:cclash/searth
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashPice:1}}}] at @s run function dpm7:cclash/pice
execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashMfloor:1}}}] at @s run function dpm7:cclash/mfloor

execute as @a[scores={rightClick=1},nbt={SelectedItem:{tag:{cclashAerruption:1}}}] at @s run function dpm7:cclash/aerruption

execute if score Players_Remaining: cclashMain matches 2.. run function dpm7:cclash/actionbar
execute as @a[tag=cclashDebug] at @s run function dpm7:cclash/actionbar
scoreboard players set @a[tag=cclashDebug] cclashCooldown 0

#Manipulate Earth
execute as @e[tag=cclashEarthquake,scores={cclashDummy=1..99}] at @s positioned ~-5 ~ ~-5 run scoreboard players set @e[tag=cclashMearth,dx=10,dy=0.5,dz=10] cclashDummy 0
execute as @e[scores={cclashDummy=0},tag=cclashMearth,tag=cclashMearthNS] at @s run fill ~2 ~ ~ ~-2 ~3 ~ minecraft:air replace dripstone_block
execute as @e[scores={cclashDummy=0},tag=cclashMearth,tag=cclashMearthEW] at @s run fill ~ ~ ~2 ~ ~3 ~-2 minecraft:air replace dripstone_block

execute as @e[scores={cclashDummy=0},tag=cclashMearth,tag=cclashMearthNWSE] at @s run fill ~ ~ ~ ~ ~3 ~ minecraft:air replace dripstone_block
execute as @e[scores={cclashDummy=0},tag=cclashMearth,tag=cclashMearthNWSE] at @s run fill ~1 ~ ~-1 ~1 ~3 ~-1 minecraft:air replace dripstone_block
execute as @e[scores={cclashDummy=0},tag=cclashMearth,tag=cclashMearthNWSE] at @s run fill ~2 ~ ~-2 ~2 ~3 ~-2 minecraft:air replace dripstone_block
execute as @e[scores={cclashDummy=0},tag=cclashMearth,tag=cclashMearthNWSE] at @s run fill ~-1 ~ ~1 ~-1 ~3 ~1 minecraft:air replace dripstone_block
execute as @e[scores={cclashDummy=0},tag=cclashMearth,tag=cclashMearthNWSE] at @s run fill ~-2 ~ ~2 ~-2 ~3 ~2 minecraft:air replace dripstone_block

execute as @e[scores={cclashDummy=0},tag=cclashMearth,tag=cclashMearthNESW] at @s run fill ~ ~ ~ ~ ~3 ~ minecraft:air replace dripstone_block
execute as @e[scores={cclashDummy=0},tag=cclashMearth,tag=cclashMearthNESW] at @s run fill ~1 ~ ~1 ~1 ~3 ~1 minecraft:air replace dripstone_block
execute as @e[scores={cclashDummy=0},tag=cclashMearth,tag=cclashMearthNESW] at @s run fill ~2 ~ ~2 ~2 ~3 ~2 minecraft:air replace dripstone_block
execute as @e[scores={cclashDummy=0},tag=cclashMearth,tag=cclashMearthNESW] at @s run fill ~-1 ~ ~-1 ~-1 ~3 ~-1 minecraft:air replace dripstone_block
execute as @e[scores={cclashDummy=0},tag=cclashMearth,tag=cclashMearthNESW] at @s run fill ~-2 ~ ~-2 ~-2 ~3 ~-2 minecraft:air replace dripstone_block

execute as @e[scores={cclashDummy=0},tag=cclashMearth,tag=cclashMearthUP] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 air replace dripstone_block
execute as @e[scores={cclashDummy=119},tag=cclashMearth,tag=cclashMearthDOWN] at @s run effect clear @a[tag=cclashPlaying,limit=1,sort=nearest,distance=..2] slow_falling
execute as @e[scores={cclashDummy=0},tag=cclashMearth,tag=cclashMearthDOWN] at @s run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 air replace dripstone_block


execute as @e[scores={cclashDummy=0},tag=cclashMearth] at @s run playsound minecraft:block.pointed_dripstone.land master @a[distance=..18] ~ ~ ~ 100 0
execute as @e[scores={cclashDummy=0},tag=cclashMearth] at @s run particle block podzol ~ ~1 ~ 1 1 1 0 80 force

#Frost Ball
execute as @e[scores={cclashDummy=1..},tag=cclashFball] at @s if block ~ ~ ~ dripstone_block run scoreboard players set @s cclashDummy -15
execute as @e[scores={cclashDummy=-15},tag=cclashFball] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 packed_ice replace minecraft:dripstone_block

execute as @e[scores={cclashDummy=1..},tag=cclashFball] at @s if block ~ ~ ~ water run scoreboard players set @s cclashDummy -35
execute as @e[scores={cclashDummy=-35},tag=cclashFball] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 ice replace water

execute as @e[scores={cclashDummy=-15},tag=cclashFball] at @s run playsound minecraft:block.glass.break master @a[distance=..15] ~ ~ ~ 1 1
execute as @e[scores={cclashDummy=-35},tag=cclashFball] at @s run playsound minecraft:block.glass.break master @a[distance=..15] ~ ~ ~ 1 1

execute as @e[scores={cclashDummy=1..95},tag=cclashFball] at @s unless block ~ ~ ~ air run scoreboard players set @s cclashDummy 0

execute as @e[scores={cclashDummy=1..95},tag=cclashFball] at @s if entity @a[sort=nearest,limit=1,distance=..1.5,tag=cclashPlaying,gamemode=adventure] run scoreboard players set @s cclashDummy 1

execute as @e[scores={cclashDummy=1..95},tag=cclashFball] at @s if entity @e[sort=nearest,limit=1,distance=..1.5,tag=cclashPball] run playsound minecraft:block.fire.extinguish master @a[distance=..15] ~ ~ ~ 1 1.5
execute as @e[scores={cclashDummy=1..95},tag=cclashFball] at @s if entity @e[sort=nearest,limit=1,distance=..1.5,tag=cclashPball] run particle campfire_cosy_smoke ~ ~ ~ 0.4 0.4 0.4 0.05 25 force
execute as @e[scores={cclashDummy=1..95},tag=cclashFball] at @s if entity @e[sort=nearest,limit=1,distance=..1.5,tag=cclashPball] run scoreboard players set @s cclashDummy 1

execute as @e[scores={cclashDummy=1},tag=cclashFball] at @s run effect give @a[sort=nearest,limit=1,distance=..1.5,tag=cclashPlaying,gamemode=adventure] slowness 5 3 true
execute as @e[scores={cclashDummy=1},tag=cclashFball] at @s run effect give @a[sort=nearest,limit=1,distance=..1.5,tag=cclashPlaying,gamemode=adventure] weakness 3 100 true
execute as @e[scores={cclashDummy=1},tag=cclashFball] at @s run effect give @a[sort=nearest,limit=1,distance=..1.5,tag=cclashPlaying,gamemode=adventure] instant_damage 1 0 true
execute as @e[scores={cclashDummy=1},tag=cclashFball] at @s run effect give @a[sort=nearest,limit=1,distance=..1.5,tag=cclashPlaying,gamemode=adventure] fire_resistance 2 0 true

execute as @e[scores={cclashDummy=1..},tag=cclashFball] at @s run tp @s ^ ^ ^0.8
execute as @e[scores={cclashDummy=1..},tag=cclashFball] at @s run particle dust 0.678 0.847 0.902 1 ~ ~ ~ 0.3 0.3 0.3 0 50 force
execute as @e[scores={cclashDummy=1..},tag=cclashFball] at @s run particle block ice ~ ~-0.5 ~ 0.3 0.3 0.3 0 5 force
execute as @e[scores={cclashDummy=1..},tag=cclashFball] at @s run particle snowflake ~ ~ ~ 0.15 0.15 0.15 0.01 2 force

execute as @e[scores={cclashDummy=0},tag=cclashFball] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace packed_ice
execute as @e[scores={cclashDummy=0},tag=cclashFball] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 water replace ice
execute as @e[scores={cclashDummy=0},tag=cclashFball] at @s run playsound minecraft:block.glass.break master @a[distance=..15] ~ ~ ~ 1 1

#Pyro Ball
execute as @e[scores={cclashDummy=1..},tag=cclashPball] at @s if block ^ ^ ^0.5 dripstone_block run playsound minecraft:entity.generic.explode master @a[distance=..15] ~ ~ ~ 0.5 2
execute as @e[scores={cclashDummy=1..},tag=cclashPball] at @s if block ^ ^ ^0.5 dripstone_block run playsound minecraft:item.firecharge.use master @a[distance=..15] ~ ~ ~ 1 2
execute as @e[scores={cclashDummy=1..},tag=cclashPball] at @s if block ^ ^ ^0.5 dripstone_block run tp @s ~ ~ ~ ~-180 ~0
execute as @e[scores={cclashDummy=1..},tag=cclashPball] at @s if block ^ ^ ^0.5 blue_ice run setblock ^ ^ ^0.5 air destroy
execute as @e[scores={cclashDummy=1..},tag=cclashPball] at @s run tp @s ^ ^ ^0.95
execute as @e[scores={cclashDummy=1..},tag=cclashPball] at @s run particle flame ~ ~ ~ 0.2 0.2 0.2 0.04 20 force
execute as @e[scores={cclashDummy=1..},tag=cclashPball] at @s run particle smoke ~ ~ ~ 0.3 0.3 0.3 0 20 force
execute as @e[scores={cclashDummy=1..},tag=cclashPball] at @s run scoreboard players set @e[sort=nearest,limit=1,distance=..1.5,tag=cclashFrozen] cclashDummy 0

execute as @e[scores={cclashDummy=1..49},tag=cclashPball] at @s unless block ~ ~ ~ air run scoreboard players set @s cclashDummy 0

execute as @e[scores={cclashDummy=1..49},tag=cclashPball] at @s if entity @a[sort=nearest,limit=1,distance=..1.5,tag=cclashPlaying,gamemode=adventure] as @a[sort=nearest,limit=1,distance=..1.5,tag=cclashPlaying,gamemode=adventure] at @s run summon small_fireball ~ ~2.5 ~ {HasVisualFire:0b,power:[0.0,-10.0,0.0],Item:{id:"minecraft:air",Count:1b}}

execute as @e[scores={cclashDummy=1..49},tag=cclashPball] at @s if entity @a[sort=nearest,limit=1,distance=..1.5,tag=cclashPlaying,gamemode=adventure] run scoreboard players set @s cclashDummy 0

#Rolling Boulder
execute as @a[scores={cclashRboutime=1..29}] at @s if block ~ ~ ~ dripstone_block run playsound minecraft:block.pointed_dripstone.land master @a[distance=..18] ~ ~ ~ 100 0
execute as @a[scores={cclashRboutime=1..29}] at @s if block ~ ~ ~ dripstone_block run particle block podzol ~ ~1 ~ 1 1 1 0 80 force
execute as @a[scores={cclashRboutime=1..29}] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace minecraft:dripstone_block

execute as @a[scores={cclashRboutime=1..29}] at @s unless block ^ ^1 ^1 air run scoreboard players set @s cclashRboutime 1
execute as @a[scores={cclashRboutime=1..29}] at @s unless block ~ ~ ~ air unless block ~ ~1 ~ air unless block ~ ~2 ~ air unless block ~ ~3 ~ air run scoreboard players set @s cclashRboutime 1
execute as @a[scores={cclashRboutime=1..29}] at @s if block ~ ~-1 ~ air run tp @s ~ ~-1 ~
execute as @a[scores={cclashRboutime=1..29}] at @s run function dpm7:cclash/levelbelow

execute as @a[scores={cclashRboutime=1..29}] at @s run playsound minecraft:block.snow.break master @a[distance=..18] ~ ~ ~ 100 0

execute as @a[scores={cclashRboutime=1..29}] at @s run tp @s ^ ^ ^1.2

#execute as @a[scores={cclashRboutime=1..29}] at @s run function dpm7:cclash/levelabove
#execute as @a[scores={cclashRboutime=1..29}] at @s if block ~ ~ ~ air if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air run scoreboard players set @s cclashDummy 0

execute as @a[scores={cclashRboutime=1..29}] at @s run particle block podzol ~ ~1 ~ 0.3 0.3 0.3 0 25 force
execute as @e[scores={cclashRboutime=30..45}] at @s run particle block podzol ~ ~0.1 ~ 0.2 0.3 0.2 0 25 force

execute as @a[scores={cclashRboutime=1..29}] at @s if entity @a[distance=..2,scores={cclashRboutime=2..,cclashRboutime=0}] run scoreboard players set @s cclashRboutime 1
execute as @a[scores={cclashRboutime=1}] at @s run effect give @a[distance=..2,scores={cclashRboutime=2..,cclashRboutime=0}] slowness 3 6 true
execute as @a[scores={cclashRboutime=1}] at @s run effect give @a[distance=..2,scores={cclashRboutime=2..,cclashRboutime=0}] instant_damage 1 0 true

effect clear @a[scores={cclashRboutime=29}] slowness

scoreboard players remove @a[scores={cclashRboutime=1..}] cclashRboutime 1

#Flight
execute as @a[scores={cclashFlighttime=1..}] at @s run particle snowflake ^ ^1 ^-1 0.25 0.25 0.25 0 10 force
clear @a[scores={cclashFlighttime=1}] elytra
effect give @a[scores={cclashFlighttime=1}] slow_falling 2 0 true
scoreboard players remove @a[scores={cclashFlighttime=1..}] cclashFlighttime 1

#Flame Flash

#Exhiliration
execute as @a[scores={cclashExhiltime=2..}] at @s run particle dust_color_transition 1.000 0.000 1.000 1 1.000 1.000 1.000 ~ ~1 ~ 0.35 0.25 0.35 1 5 force
effect give @a[scores={cclashExhiltime=2..}] strength 3 0 true
effect give @a[scores={cclashExhiltime=2..}] glowing 3 0 true
scoreboard players remove @a[tag=cclashPlaying,nbt={HurtTime:10s},scores={cclashExhiltime=5..}] cclashExhiltime 5

execute as @a[scores={cclashExhiltime=1}] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..15] ~ ~ ~ 1 2
execute as @a[scores={cclashExhiltime=1}] at @s run playsound minecraft:entity.evoker_fangs.attack master @a[distance=..15] ~ ~ ~ 1 1.5
effect clear @a[scores={cclashExhiltime=1}] strength
effect clear @a[scores={cclashExhiltime=1}] glowing

team leave @a[scores={cclashExhiltime=1}]

scoreboard players remove @a[scores={cclashExhiltime=1..}] cclashExhiltime 1

#Sonic
execute as @a[scores={cclashSonictime=2..}] at @s run particle dust_color_transition 0.000 1.000 1.000 1 1.000 1.000 1.000 ~ ~1 ~ 0.35 0.25 0.35 1 5 force
effect give @a[scores={cclashSonictime=2..}] speed 3 9 true
effect give @a[scores={cclashSonictime=2..}] glowing 3 0 true
effect give @a[scores={cclashSonictime=2..}] jump_boost 3 1 true
effect give @a[scores={cclashSonictime=2..}] weakness 3 10 true

execute as @a[scores={cclashSonictime=1}] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..15] ~ ~ ~ 1 2
execute as @a[scores={cclashSonictime=1}] at @s run playsound minecraft:entity.allay.item_thrown master @a[distance=..15] ~ ~ ~ 1 0
effect clear @a[scores={cclashSonictime=1}] speed
effect clear @a[scores={cclashSonictime=1}] weakness
effect clear @a[scores={cclashSonictime=1}] jump_boost
effect clear @a[scores={cclashSonictime=1}] glowing


team leave @a[scores={cclashSonictime=1}]

scoreboard players remove @a[scores={cclashSonictime=1..}] cclashSonictime 1

#Armor of Earth
execute as @a[scores={cclashAearthtime=2..}] at @s run attribute @s minecraft:generic.knockback_resistance base set 1
execute as @a[scores={cclashAearthtime=2..}] at @s run particle dust_color_transition 1.000 0.647 0.000 1 1.000 1.000 1.000 ~ ~1 ~ 0.35 0.25 0.35 1 5 force
effect give @a[scores={cclashAearthtime=2..}] resistance 3 1 true
effect give @a[scores={cclashAearthtime=2..}] fire_resistance 3 0 true
effect give @a[scores={cclashAearthtime=2..}] slowness 3 1 true
effect give @a[scores={cclashAearthtime=2..}] glowing 3 0 true
effect clear @a[scores={cclashAearthtime=2..}] speed

execute as @a[scores={cclashAearthtime=1}] at @s run attribute @s minecraft:generic.knockback_resistance base set 0
execute as @a[scores={cclashAearthtime=1}] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..15] ~ ~ ~ 1 2
execute as @a[scores={cclashAearthtime=1}] at @s run playsound minecraft:entity.armor_stand.break master @a[distance=..15] ~ ~ ~ 1 0
effect clear @a[scores={cclashAearthtime=1}] resistance
effect clear @a[scores={cclashAearthtime=1}] fire_resistance
effect clear @a[scores={cclashAearthtime=1}] slowness
effect clear @a[scores={cclashAearthtime=1}] glowing

clear @a[scores={cclashAearthtime=1}] netherite_chestplate

team leave @a[scores={cclashAearthtime=1}]

scoreboard players remove @a[scores={cclashAearthtime=1..}] cclashAearthtime 1

#Earthquake
execute as @e[tag=cclashEarthquake,scores={cclashDummy=100..160}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=cclashEarthquake,scores={cclashDummy=100..160}] at @s run particle dust 1.000 0.000 0.000 1 ^ ^ ^7 0 0 0 0 5 force
execute as @e[tag=cclashEarthquake,scores={cclashDummy=100..160}] at @s run particle dust 1.000 0.000 0.000 1 ^ ^ ^-7 0 0 0 0 5 force
execute as @e[tag=cclashEarthquake,scores={cclashDummy=100..160}] at @s run particle dust 1.000 0.000 0.000 1 ^-7 ^ ^ 0 0 0 0 5 force
execute as @e[tag=cclashEarthquake,scores={cclashDummy=100..160}] at @s run particle dust 1.000 0.000 0.000 1 ^7 ^ ^ 0 0 0 0 5 force

execute as @e[tag=cclashEarthquake,scores={cclashDummy=1..99}] at @s run particle block dripstone_block ~ ~0.35 ~ 3.5 0.5 3.5 0 100 force
execute as @e[tag=cclashEarthquake,scores={cclashDummy=1..99}] at @s positioned ~-6 ~-1 ~-6 as @a[dx=12,dy=1.5,dz=12,tag=cclashPlaying,gamemode=adventure,nbt={OnGround:1b}] at @s run tp @s ~ ~3.5 ~
execute as @e[tag=cclashEarthquake,scores={cclashDummy=1..99}] at @s positioned ~-6 ~-1 ~-6 as @a[dx=12,dy=1.5,dz=12,tag=cclashPlaying,gamemode=adventure] at @s run effect give @s slowness 2 2 true

execute as @e[tag=cclashEarthquake,scores={cclashDummy=20..99}] at @s run playsound minecraft:entity.ravager.stunned master @a[distance=..30] ~ ~ ~ 0.8 0


#Freezing Beam
execute as @e[tag=cclashFbeam,scores={cclashDummy=120}] at @s run stopsound @a[distance=..15] master minecraft:block.beacon.power_select
execute as @e[tag=cclashFbeam,scores={cclashDummy=120}] at @s run function dpm7:cclash/fbeamline
execute as @e[tag=cclashFbeam,scores={cclashDummy=121..150}] at @s run particle snowflake ~ ~ ~ 0 0 0 0.15 5 force

execute as @e[tag=cclashFrozen,scores={cclashDummy=1..}] at @s run particle block blue_ice ^ ^1 ^0.7 0.1 0.5 0.1 0 1 force
execute as @e[tag=cclashFrozen,scores={cclashDummy=1..}] at @s run particle block blue_ice ^ ^1 ^-0.7 0.1 0.5 0.1 0 1 force 
execute as @e[tag=cclashFrozen,scores={cclashDummy=1..}] at @s run particle block blue_ice ^0.7 ^1 ^ 0.1 0.5 0.1 0 1 force
execute as @e[tag=cclashFrozen,scores={cclashDummy=1..}] at @s run particle block blue_ice ^-0.7 ^1 ^ 0.1 0.5 0.1 0 1 force 
execute as @e[tag=cclashFrozen,scores={cclashDummy=1..}] at @s as @a[sort=nearest,limit=1,tag=cclashPlaying,distance=..1.5] at @s run tp @s @e[sort=nearest,limit=1,tag=cclashFrozen,scores={cclashDummy=1..},distance=..1.5]

#Strike of Lightning
execute as @e[tag=cclashSlightning,scores={cclashDummy=1..}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=cclashSlightning,scores={cclashDummy=2..60}] at @s run particle dust 1.000 0.000 0.000 1 ^ ^1 ^2.3 0 0.3 0 0 5 force
execute as @e[tag=cclashSlightning,scores={cclashDummy=2..60}] at @s run particle dust 1.000 0.000 0.000 1 ^ ^1 ^-2.3 0 0.3 0 0 5 force
execute as @e[tag=cclashSlightning,scores={cclashDummy=2..60}] at @s run particle dust 1.000 0.000 0.000 1 ^-2.3 ^1 ^ 0 0.3 0 0 5 force
execute as @e[tag=cclashSlightning,scores={cclashDummy=2..60}] at @s run particle dust 1.000 0.000 0.000 1 ^2.3 ^1 ^ 0 0.3 0 0 5 force

execute as @e[tag=cclashSlightning,scores={cclashDummy=1}] at @s run summon lightning_bolt

#Ice Spikes
execute as @e[tag=cclashIspikes,scores={cclashDummy=40}] at @s run fill ~ ~ ~ ~ ~3 ~ packed_ice replace air
execute as @e[tag=cclashIspikes,scores={cclashDummy=40}] at @s run playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 100 0.5
execute as @e[tag=cclashIspikes,scores={cclashDummy=40}] at @s run particle block ice ~ ~2.5 ~ 0.4 1 0.4 0 60 force
execute as @e[tag=cclashIspikes,scores={cclashDummy=40}] at @s run particle snowflake ~ ~2.5 ~ 0.5 1 0.5 0 20 force

execute as @e[tag=cclashIspikes,scores={cclashDummy=40}] at @s as @a[tag=cclashPlaying,distance=..2,gamemode=adventure] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["cclashDummy","cclashISthrow","cclashISthrowNew"]}
execute as @e[tag=cclashIspikes,scores={cclashDummy=40}] at @s as @a[tag=cclashPlaying,distance=..2,gamemode=adventure] at @s run scoreboard players set @e[sort=nearest,limit=1,tag=cclashISthrowNew] cclashDummy 14
execute as @e[tag=cclashIspikes,scores={cclashDummy=40}] at @s as @a[tag=cclashPlaying,distance=..2,gamemode=adventure] at @s run tp @e[sort=nearest,limit=1,tag=cclashISthrowNew] @s
execute as @e[tag=cclashIspikes,scores={cclashDummy=40}] at @s as @a[tag=cclashPlaying,distance=..2,gamemode=adventure] at @s run tag @e[sort=nearest,limit=1,tag=cclashISthrowNew] remove cclashISthrowNew

execute as @e[tag=cclashISthrow,scores={cclashDummy=9..}] at @s run tp @s ~ ~1 ~ ~ ~5
execute as @e[tag=cclashISthrow,scores={cclashDummy=1..8}] at @s if block ~ ~1 ~ air run tp @s ~ ~1 ~ ~ ~5
execute as @e[tag=cclashISthrow,scores={cclashDummy=1..}] at @s run tp @a[sort=nearest,limit=1,tag=cclashPlaying] @s

execute as @e[tag=cclashIspikes,scores={cclashDummy=1}] at @s run fill ~ ~ ~ ~ ~3 ~ air replace packed_ice
execute as @e[tag=cclashIspikes,scores={cclashDummy=1}] at @s run playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 100 0.75
execute as @e[tag=cclashIspikes,scores={cclashDummy=1}] at @s run particle block packed_ice ~ ~2.5 ~ 0.4 1 0.4 0 60 force

#Glacier Mend
execute as @e[tag=cclashGmend,scores={cclashDummy=1..}] at @s run particle dust 0.678 0.847 0.902 1 ~ ~ ~ 0.25 0.25 0.25 0 20 force
execute as @e[tag=cclashGmend,scores={cclashDummy=1..}] at @s run particle happy_villager ~ ~ ~ 0.25 0.25 0.25 0 1 force

execute as @e[tag=cclashGmend,scores={cclashDummy=1..}] at @s run effect give @a[tag=cclashPlaying,distance=..1.5,limit=1,sort=nearest,gamemode=adventure] regeneration 5 2 true
execute as @e[tag=cclashGmend,scores={cclashDummy=1..}] at @s run effect give @a[tag=cclashPlaying,distance=..1.5,limit=1,sort=nearest,gamemode=adventure] slowness 6 5 true
execute as @e[tag=cclashGmend,scores={cclashDummy=1..}] at @s run effect give @a[tag=cclashPlaying,distance=..1.5,limit=1,sort=nearest,gamemode=adventure] fire_resistance 3 0 true
execute as @e[tag=cclashGmend,scores={cclashDummy=1..}] at @s as @a[tag=cclashPlaying,distance=..1.5,limit=1,sort=nearest,gamemode=adventure] run playsound minecraft:block.amethyst_cluster.break master @a[distance=..25] ~ ~ ~ 100 2
execute as @e[tag=cclashGmend,scores={cclashDummy=1..}] at @s as @a[tag=cclashPlaying,distance=..1.5,limit=1,sort=nearest,gamemode=adventure] run particle dust 0.678 0.847 0.902 1 ~ ~1 ~ 0.25 0.25 0.25 0 30 force
execute as @e[tag=cclashGmend,scores={cclashDummy=1..}] at @s if entity @a[tag=cclashPlaying,distance=..1.5] run scoreboard players set @s cclashDummy 0

effect clear @a[tag=cclashPlaying,nbt={HurtTime:10s}] regeneration

#Meteor
execute as @e[tag=cclashMeteor,scores={cclashDummy=1..}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=cclashMeteor,scores={cclashDummy=1..}] at @s run particle dust 1.000 0.000 0.000 1 ^ ^1 ^2.5 0 0.3 0 0 5 force
execute as @e[tag=cclashMeteor,scores={cclashDummy=1..}] at @s run particle dust 1.000 0.000 0.000 1 ^ ^1 ^-2.5 0 0.3 0 0 5 force
execute as @e[tag=cclashMeteor,scores={cclashDummy=1..}] at @s run particle dust 1.000 0.000 0.000 1 ^-2.5 ^1 ^ 0 0.3 0 0 5 force
execute as @e[tag=cclashMeteor,scores={cclashDummy=1..}] at @s run particle dust 1.000 0.000 0.000 1 ^2.5 ^1 ^ 0 0.3 0 0 5 force

execute as @e[tag=cclashMeteorite,nbt=!{power:[0.0,-0.02,0.0]}] at @s run data merge entity @s {power:[0.0,-0.06,0.0]}

execute as @e[tag=cclashMeteorite] at @s run playsound minecraft:entity.blaze.shoot master @a[distance=..15] ~ ~ ~ 0.1 0

#Split Earth
execute as @e[tag=cclashSearth,scores={cclashDummy=90}] at @s run tp @a[tag=cclashPlaying,distance=..2.2,gamemode=adventure] @s
execute as @e[tag=cclashSearth,scores={cclashDummy=90}] at @s run setblock ~ ~ ~ minecraft:dripstone_block keep
execute as @e[tag=cclashSearth,scores={cclashDummy=90}] at @s run particle block dripstone_block ~ ~ ~ 0.25 0.25 0.25 0 50 force
execute as @e[tag=cclashSearth,scores={cclashDummy=90}] at @s run playsound minecraft:block.pointed_dripstone.land master @a[distance=..15] ~ ~ ~ 100 0

execute as @e[tag=cclashSearth,scores={cclashDummy=1}] at @s run fill ~ ~ ~ ~ ~ ~ air replace minecraft:dripstone_block

execute as @e[tag=cclashSearth,scores={cclashDummy=-90}] at @s run tp @a[tag=cclashPlaying,distance=..3,gamemode=adventure] @s
execute as @e[tag=cclashSearth,scores={cclashDummy=-90}] at @s run effect give @a[tag=cclashPlaying,distance=..3,gamemode=adventure] instant_damage 1 0 true
execute as @e[tag=cclashSearth,scores={cclashDummy=-90..-1}] at @s run effect give @a[tag=cclashPlaying,distance=..3,nbt=!{ActiveEffects:[{Id:19}]}] poison 2 1 true
execute as @e[tag=cclashSearth,scores={cclashDummy=-90}] at @s run effect give @a[tag=cclashPlaying,distance=..3,gamemode=adventure] weakness 5 10 true
execute as @e[tag=cclashSearth,scores={cclashDummy=-90}] at @s run fill ~2 ~ ~2 ~-2 ~ ~-2 dripstone_block replace air
execute as @e[tag=cclashSearth,scores={cclashDummy=-90}] at @s run fill ~2 ~1 ~2 ~-2 ~1 ~-2 pointed_dripstone replace air

execute as @e[tag=cclashSearth,scores={cclashDummy=-90}] at @s run fill ~2 ~ ~2 ~2 ~ ~2 air replace dripstone_block
execute as @e[tag=cclashSearth,scores={cclashDummy=-90}] at @s run fill ~-2 ~ ~-2 ~-2 ~ ~-2 air replace dripstone_block
execute as @e[tag=cclashSearth,scores={cclashDummy=-90}] at @s run fill ~-2 ~ ~2 ~-2 ~ ~2 air replace dripstone_block
execute as @e[tag=cclashSearth,scores={cclashDummy=-90}] at @s run fill ~2 ~ ~-2 ~2 ~ ~-2 air replace dripstone_block

execute as @e[tag=cclashSearth,scores={cclashDummy=-90}] at @s run particle block dripstone_block ~ ~0.5 ~ 0.5 0.3 0.5 0 75 force
execute as @e[tag=cclashSearth,scores={cclashDummy=-90}] at @s run playsound minecraft:block.pointed_dripstone.land master @a[distance=..20] ~ ~ ~ 100 0
execute as @e[tag=cclashSearth,scores={cclashDummy=-90}] at @s run playsound minecraft:block.nether_ore.break master @a[distance=..20] ~ ~ ~ 100 0

execute as @e[tag=cclashSearth,scores={cclashDummy=-1}] at @s run fill ~2 ~ ~2 ~-2 ~ ~-2 air replace dripstone_block
execute as @e[tag=cclashSearth,scores={cclashDummy=-1}] at @s run fill ~2 ~1 ~2 ~-2 ~1 ~-2 air replace pointed_dripstone

#Prison of Ice
execute as @e[tag=cclashPice,scores={cclashDummy=101..}] at @s if block ~ ~ ~ air run tp @s ^ ^ ^0.65
execute as @e[tag=cclashPice,scores={cclashDummy=101..}] at @s run particle block blue_ice ~ ~ ~ 0.25 0.25 0.25 0 30 force

execute as @e[tag=cclashPice,scores={cclashDummy=101..}] at @s if entity @a[tag=cclashPlaying,distance=..2,gamemode=adventure] run tp @s ~ ~-1 ~
execute as @e[tag=cclashPice,scores={cclashDummy=101..}] at @s if entity @a[tag=cclashPlaying,distance=..2,gamemode=adventure] run scoreboard players set @s cclashDummy 100
execute as @e[tag=cclashPice,scores={cclashDummy=101..}] at @s unless block ^ ^ ^1 air run scoreboard players set @s cclashDummy 100
execute as @e[tag=cclashPice,scores={cclashDummy=100}] at @s run playsound minecraft:entity.elder_guardian.curse master @a[distance=..30] ~ ~ ~ 0.5 2
execute as @e[tag=cclashPice,scores={cclashDummy=100}] at @s run playsound minecraft:block.glass.break master @a[distance=..30] ~ ~ ~ 1 0
execute as @e[tag=cclashPice,scores={cclashDummy=100}] at @s run fill ~1 ~ ~2 ~-1 ~2 ~2 blue_ice replace air
execute as @e[tag=cclashPice,scores={cclashDummy=100}] at @s run fill ~-1 ~ ~-2 ~1 ~2 ~-2 blue_ice replace air
execute as @e[tag=cclashPice,scores={cclashDummy=100}] at @s run fill ~-2 ~ ~1 ~-2 ~2 ~-1 blue_ice replace air
execute as @e[tag=cclashPice,scores={cclashDummy=100}] at @s run fill ~2 ~ ~-1 ~2 ~2 ~1 blue_ice replace air
execute as @e[tag=cclashPice,scores={cclashDummy=100}] at @s run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 blue_ice replace air
scoreboard players remove @e[tag=cclashPice,scores={cclashDummy=100}] cclashDummy 1

execute as @e[tag=cclashPice,scores={cclashDummy=1..100}] at @s run particle snowflake ~ ~ ~ 1.3 1.3 1.3 0 5 force
execute as @e[tag=cclashPice,scores={cclashDummy=1..100}] at @s run scoreboard players set @a[distance=..2.5,scores={cclashFlighttime=2..}] cclashFlighttime 1
execute as @e[tag=cclashPice,scores={cclashDummy=1..100}] at @s run scoreboard players set @a[distance=..2.5,scores={cclashSonictime=2..}] cclashSonictime 1

execute as @e[tag=cclashPice,scores={cclashDummy=1}] at @s run playsound minecraft:block.glass.break master @a[distance=..30] ~ ~ ~ 1 0.5
execute as @e[tag=cclashPice,scores={cclashDummy=1}] at @s run fill ~1 ~ ~2 ~-1 ~2 ~2 air replace blue_ice
execute as @e[tag=cclashPice,scores={cclashDummy=1}] at @s run fill ~-1 ~ ~-2 ~1 ~2 ~-2 air replace blue_ice
execute as @e[tag=cclashPice,scores={cclashDummy=1}] at @s run fill ~-2 ~ ~1 ~-2 ~2 ~-1 air replace blue_ice
execute as @e[tag=cclashPice,scores={cclashDummy=1}] at @s run fill ~2 ~ ~-1 ~2 ~2 ~1 air replace blue_ice
execute as @e[tag=cclashPice,scores={cclashDummy=1}] at @s run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 air replace blue_ice

#Magma Floor
execute as @e[tag=cclashMfloor,scores={cclashDummy=140}] at @s as @a[tag=cclashPlaying,distance=..2.5,gamemode=adventure] at @s run tp @s ~ ~1.5 ~
execute as @e[tag=cclashMfloor,scores={cclashDummy=140}] at @s as @a[tag=cclashPlaying,distance=..2.5,gamemode=adventure] at @s run effect give @s slowness 4 1 true
execute as @e[tag=cclashMfloor,scores={cclashDummy=140}] at @s run particle block magma_block ~ ~0.5 ~ 1 0.25 1 0 50 force
execute as @e[tag=cclashMfloor,scores={cclashDummy=140}] at @s run playsound minecraft:entity.blaze.shoot master @a[distance=..15] ~ ~ ~ 1 0.5
execute as @e[tag=cclashMfloor,scores={cclashDummy=140}] at @s run playsound minecraft:block.pointed_dripstone.land master @a[distance=..15] ~ ~ ~ 100 1.5
execute as @e[tag=cclashMfloor,scores={cclashDummy=140}] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 magma_block replace air

execute as @e[tag=cclashMfloor,scores={cclashDummy=1}] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace magma_block

effect give @a[scores={cclashMfloortime=2..},tag=cclashPlaying] fire_resistance 2 0 true
scoreboard players set @a[scores={cclashMfloortime=2..},nbt={HurtTime:10s},tag=cclashPlaying] cclashMfloortime 1

effect clear @a[scores={cclashMfloortime=1},tag=cclashPlaying] fire_resistance

scoreboard players remove @a[scores={cclashMfloortime=1..},tag=cclashPlaying] cclashMfloortime 1

#Arctic Erruption
execute as @a[tag=cclashPlaying,scores={cclashAerruption=2..}] at @s run effect give @s levitation 2 0 true
execute as @a[tag=cclashPlaying,scores={cclashAerruption=2..}] at @s run particle flame ~ ~1 ~ 0.2 0.2 0.2 0.1 5 force
execute as @a[tag=cclashPlaying,scores={cclashAerruption=2..}] at @s run particle snowflake ~ ~1 ~ 0.2 0.2 0.2 0.1 5 force
execute as @a[tag=cclashPlaying,scores={cclashAerruption=2..}] at @s run particle block dripstone_block ~ ~ ~ 1 0.2 1 1 30 force

execute as @a[tag=cclashPlaying,scores={cclashAerruption=1}] at @s run function dpm7:cclash/aerrupt

execute as @e[tag=cclashAerruptSpikes,scores={cclashDummy=1}] at @s run fill ~ ~ ~ ~ ~2 ~ air replace packed_ice
execute as @e[tag=cclashAerruptSpikes,scores={cclashDummy=1}] at @s run playsound minecraft:block.glass.break master @a[distance=..10] ~ ~ ~ 1 0.1
execute as @e[tag=cclashAerruptSpikes,scores={cclashDummy=1}] at @s run particle block ice ~ ~1 ~ 0.4 1 0.4 0 60 force

scoreboard players remove @a[tag=cclashPlaying,scores={cclashAerruption=1..}] cclashAerruption 1

execute as @a[tag=cclashPlaying] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace fire
kill @e[tag=cclashDummy,scores={cclashDummy=0}]
scoreboard players remove @e[tag=cclashDummy,scores={cclashDummy=1..}] cclashDummy 1
scoreboard players add @e[tag=cclashDummy,scores={cclashDummy=..-1}] cclashDummy 1


scoreboard players set @a[tag=!cclashPlaying] cclashDeath 0
scoreboard players set @a[tag=!cclashPlaying] cclashDead 0

give @a[tag=cclashPlaying,scores={cclashFood=8}] apple 1
scoreboard players set @a[tag=cclashPlaying,scores={cclashFood=8}] cclashFood 0

execute if score time cclashDummy matches 1 run function dpm7:cclash/match
execute as @a[tag=cclashPlaying,scores={cclashDeath=1..}] at @s run function dpm7:cclash/death
execute as @a[tag=cclashPlaying,scores={cclashDead=1}] at @s run function dpm7:cclash/respawn
execute as @a[scores={ConjurerClash=1..}] at @s run function dpm7:cclash/host
execute as @a[tag=cclashPlaying,scores={cclashMain=0}] at @s run function dpm7:cclash/eliminated
execute if score Players_Remaining: cclashMain matches 1 run function dpm7:cclash/victory

title @a[scores={cclashDead=1..},tag=cclashPlaying] title " "
execute as @a[tag=cclashPlaying,scores={cclashDead=1..}] at @s run title @s subtitle ["",{"text":" Respawning in ","color":"aqua"},{"score":{"name":"@s","objective":"cclashDead"},"color":"yellow"},{"text":" seconds.","color":"aqua"}]

scoreboard players set @a[tag=cclashPlaying] rightClick 0
scoreboard players set @a[scores={cclashCSpells=..-1}] cclashCSpells 0

execute if score GameOn cclashDummy matches 1 run schedule function dpm7:cclash/tick 1t