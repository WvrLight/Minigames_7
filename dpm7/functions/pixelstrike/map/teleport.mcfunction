#summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["psTeleportDummy"],CustomName:'{"text":"psDummy"}'}
#execute positioned ~ ~ ~ as @a[dy=2,dx=0,dz=2] run function dpm7:pixelstrike/map/teleport

execute at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 3 2
tp @s ~ ~ ~
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 3 2