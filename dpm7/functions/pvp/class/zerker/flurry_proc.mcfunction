# Increment and reset timer
scoreboard players add @s counter 1
scoreboard players set @s tick 2

# Summon dummy
summon marker ~ ~ ~ {Tags:["flurryDummy"]}
spreadplayers ~ ~ 0 2 false @e[tag=flurryDummy]
data modify entity @e[tag=flurryDummy,limit=1] Pos[1] set from entity @s Pos[1]

# Dummy actions
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 3 0
playsound minecraft:entity.warden.attack_impact master @a ~ ~ ~ 1 0.5
execute at @s positioned as @e[tag=flurryDummy] positioned ^ ^ ^1.5 anchored eyes run function dpm7:pvp/class/zerker/flurry_proc_effect

kill @e[tag=flurryDummy]

execute if score @s counter matches 20.. run function dpm7:pvp/class/zerker/flurry_end