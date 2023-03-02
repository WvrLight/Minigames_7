#MATCH
execute if score roundEndTime psDummy matches 1.. run function dpm7:pixelstrike/game/psa_match

#PLAYER EFFECTS
execute as @a[tag=psPlaying,gamemode=!spectator] run function dpm7:pixelstrike/game/psa_player

#ROUND
execute if score roundTime psDummy matches 10.. run scoreboard players add Round_Time: psMain 1
execute if score roundTime psDummy matches 10.. run scoreboard players set roundTime psDummy 0

execute if score roundStarted psDummy matches 1 run function dpm7:pixelstrike/game/psa_round

#AUTO
execute as @a[nbt={SelectedItem:{tag:{smg:1}}}] unless entity @s[advancements={dpm7:shoot=true}] run effect clear @s speed

#BARRIER
execute if score psBuyTime psDummy matches 1.. at @e[tag=psBarrierDummy] run particle dust 0.8 0.9 0.9 4.0 ^ ^ ^1 0.3 1.5 0.3 0 10
execute if score psBuyTime psDummy matches 1.. at @e[tag=psBarrierDummy] run particle dust 0.8 0.9 0.9 4.0 ^1 ^ ^1 0.3 1.5 0.3 0 10
execute if score psBuyTime psDummy matches 1.. at @e[tag=psBarrierDummy] run particle dust 0.8 0.9 0.9 4.0 ^-1 ^ ^1 0.3 1.5 0.3 0 10
execute if score psBuyTime psDummy matches 0 at @e[tag=psBarrierDummy] run fill ^1 ^ ^1 ^-1 ^2 ^1 air replace barrier

#BUY
execute if score psBuyTime psDummy matches 1.. run function dpm7:pixelstrike/game/psa_buy
execute if score psBuyTime psDummy matches 0 if score buyAnytime psDummy matches 1 run scoreboard players enable @a[tag=psPlaying] psPurchase
execute if score psBuyTime psDummy matches 0 if score buyAnytime psDummy matches 1 as @a[scores={psPurchase=1..}] run function dpm7:pixelstrike/item/buy

#RIFLE
execute as @a[scores={sprayR=1}] run scoreboard players set @s spray 0
execute as @a[scores={sprayR=1}] run scoreboard players set @s firinghold2 1
execute as @a[scores={sprayR=1..}] run scoreboard players remove @s sprayR 1

#SNIPER
execute as @a[nbt={SelectedItem:{tag:{sniper:1}}},scores={psSneak=1..,sniperR=0}] run function dpm7:pixelstrike/weapon/sniper_zoom
execute as @a[scores={psZoom=1..,psSneak=0}] run function dpm7:pixelstrike/game/psa_sniper_zoom

execute as @a[scores={sniperR=1..}] run scoreboard players remove @s sniperR 1
execute as @a[scores={sniperR=1}] at @s run playsound minecraft:block.chain.place master @s ~ ~ ~ 1 1.5

#SHOTGUN
execute as @a[scores={shotgunR=1..}] run scoreboard players remove @s shotgunR 1

#GRENADES
execute as @a[nbt={SelectedItem:{tag:{psFlashCharge:1}}},scores={rightClick=1..}] at @s run function dpm7:pixelstrike/nade/flash_charge
execute as @a[nbt={SelectedItem:{tag:{psSmokeBeacon:1}}},scores={rightClick=1..}] at @s run function dpm7:pixelstrike/nade/smoke_beacon
execute as @a[nbt={SelectedItem:{tag:{psNade:1}}},scores={rightClick=1..}] at @s run function dpm7:pixelstrike/nade/nade_throw

execute as @e[name=psNade] if score @s psBounceH matches 1.. run scoreboard players remove @s psBounceH 1
execute as @e[tag=bounce] run scoreboard players add @s psBounce 1
execute as @e[tag=bounce] if score @s psBounce matches 4.. run tag @s remove bounce

execute as @e[tag=psSmoke] run function dpm7:pixelstrike/game/psa_smoke
execute as @e[name=psSmokeCloud] run function dpm7:pixelstrike/game/psa_smoke_cloud

execute as @e[tag=psFlash] run function dpm7:pixelstrike/game/psa_flash
execute as @a[tag=psFlashed] run function dpm7:pixelstrike/game/psa_flashed

execute as @e[name=psMollyArea] run function dpm7:pixelstrike/game/psa_molly_area

#BOMB
execute if score matchStarted psDummy matches 1 run function dpm7:pixelstrike/game/psa_bomb
execute if score bombPlanted psDummy matches 0 as @e[type=item,nbt={Item:{id:"minecraft:tnt",Count:1b,tag:{psBomb:1}}}] run function dpm7:pixelstrike/game/psa_bomb_drop

#RELOAD
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{primary:1}}]}] run function dpm7:pixelstrike/weapon/reload/reload_primary
execute as @a[scores={psReload=1..}] unless entity @s[nbt={SelectedItem:{tag:{primary:1}}}] run scoreboard players set @s psReload 0
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{secondary:1}}]}] run function dpm7:pixelstrike/weapon/reload/reload_pistol
execute as @a[scores={psReload2=1..}] unless entity @s[nbt={SelectedItem:{tag:{secondary:1}}}] run scoreboard players set @s psReload2 0

execute as @a[scores={psReload2=9}] at @s run playsound minecraft:block.scaffolding.break master @s ~ ~ ~ 0.5 1.5
execute as @a[scores={psReload=11}] at @s run playsound minecraft:block.scaffolding.break master @s ~ ~ ~ 0.5 1
execute as @a[scores={psReload=21}] at @s run playsound minecraft:block.scaffolding.break master @s ~ ~ ~ 0.5 1 
execute as @a[scores={psReload=31}] at @s run playsound minecraft:block.scaffolding.break master @s ~ ~ ~ 0.5 1
execute as @a[scores={psReload=41}] at @s run playsound minecraft:block.scaffolding.break master @s ~ ~ ~ 0.5 1
execute as @a[scores={psReload=51}] at @s run playsound minecraft:block.scaffolding.break master @s ~ ~ ~ 0.5 1 

scoreboard players remove @a[scores={psReload=1..}] psReload 1
execute as @a[scores={psReload=1}] run function dpm7:pixelstrike/weapon/reload/reload_primary_end

scoreboard players remove @a[scores={psReload2=1..}] psReload2 1
execute as @a[scores={psReload2=1}] run function dpm7:pixelstrike/weapon/reload/reload_pistol_end

execute if score matchStarted psDummy matches 1 run schedule function dpm7:pixelstrike/game/tick2 2t