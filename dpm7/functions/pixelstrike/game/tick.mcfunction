#AUTO
execute as @a[scores={firing=1..},nbt={SelectedItem:{tag:{smg:1}}}] run effect give @s speed 1 10 true
execute as @a[scores={firing=0..},nbt={SelectedItem:{tag:{smg:1}}}] unless entity @s[advancements={dpm7:shoot=true}] run effect clear @s speed
execute as @a[scores={firing=1..}] unless entity @s[advancements={dpm7:shoot=true}] run scoreboard players set @s firing 0

#SNIPER
execute as @a[nbt={SelectedItem:{tag:{sniper:1}}}] run function dpm7:pixelstrike/game/psa_sniper

#SHOTGUN
execute as @a[nbt={SelectedItem:{tag:{shotgun:1}}}] run function dpm7:pixelstrike/game/psa_shotgun

#PISTOL
execute as @a[nbt={SelectedItem:{tag:{pistol:1}}}] run function dpm7:pixelstrike/game/psa_pistol
execute as @a[scores={pistolR=1..}] run scoreboard players remove @s pistolR 1
execute as @a[scores={pistolR2=1}] run scoreboard players set @s pistol 0
execute as @a[scores={pistolR2=1..}] run scoreboard players remove @s pistolR2 1

#FOOTSTEPS
execute if score footstepsEnabled psDummy matches 1 as @a[tag=psPlaying] run function dpm7:pixelstrike/game/psa_step

#INACCURACY
execute as @a[tag=psPlaying] run function dpm7:pixelstrike/weapon/acc/inaccuracy

#GRENADES
execute as @e[tag=psMolly] run function dpm7:pixelstrike/game/psa_molly
execute as @e[tag=psHE] run function dpm7:pixelstrike/game/psa_he

execute as @e[name=psNade] run function dpm7:pixelstrike/nade/nade_bounce
#execute as @e[name=psNade,tag=!bounce,tag=!psMolly] at @s unless block ^ ^-1 ^ air run function dpm7:pixelstrike/nade/nade_bounce_v

#HEALTH
execute as @a[tag=psPlaying,gamemode=!spectator] run function dpm7:pixelstrike/game/psa_ui

#TICK
execute if score matchStarted psDummy matches 1 run schedule function dpm7:pixelstrike/game/tick 1t