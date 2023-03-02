# Used only for re-generating M_7 spawn statues

kill @e[tag=spawnStatue]

# LIGHT
summon armor_stand -1.5 67 -34.5 {Invulnerable:1b,ShowArms:1b,DisabledSlots:4144959,Tags:["spawnStatue","statueLight"],NoBasePlate:1b,ShowArms:1b,ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Trim:{material:"minecraft:diamond",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Trim:{material:"minecraft:gold",pattern:"minecraft:tide"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Trim:{material:"minecraft:diamond",pattern:"minecraft:ward"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"WvrLight"}}],Pose:{Head:[8f,0f,0f],LeftLeg:[0f,0f,355f],RightLeg:[0f,0f,5f],LeftArm:[290f,35f,0f],RightArm:[70f,160f,0f]}}

execute at @e[tag=statueLight,type=armor_stand] rotated 0 0 positioned ^ ^-0.8 ^0.45 run summon item_display ~ ~0.5 ~ {Tags:["spawnStatue","statueLight"],item:{id: "minecraft:diamond_sword", Count: 1},transformation:{translation:[0,0,0],scale:[1f,1f,1f],left_rotation:[0f,0f,1f,0.425f],right_rotation:[0f,0f,0f,1f]}}

# SHANE
summon armor_stand 2.5 67 -34.5 {Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["spawnStatue","statueShane"],DisabledSlots:4144959,ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:spire"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:sentry"}}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Trim:{material:"minecraft:redstone",pattern:"minecraft:snout"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"RemorsEcoDe"}}],Pose:{Head:[2f,23f,0f],LeftLeg:[343f,0f,358f],RightLeg:[4f,0f,0f],LeftArm:[6f,7f,354f],RightArm:[299f,51f,0f]}}

# FREDDIE
summon armor_stand -2 64 -6 {Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["spawnStatue","statueFreddie","statueLeft"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16719073},Trim:{material:"minecraft:amethyst",pattern:"minecraft:tide"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2359050},Trim:{material:"minecraft:diamond",pattern:"minecraft:wild"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16711680},Trim:{material:"minecraft:gold",pattern:"minecraft:vex"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Ghostttowns"}}],Pose:{RightArm:[250f,0f,0f]}}

# JONAS
summon armor_stand 2 64 -6 {Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["spawnStatue","statueJonas","statueRight"],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Natnoodle35"}}]}

# KIEL
summon armor_stand 2 64 -14 {Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["spawnStatue","statueKiel","statueRight"],Pose:{Head:[14f,0f,0f],LeftLeg:[289f,333f,0f],RightLeg:[289f,23f,0f],LeftArm:[325f,343f,0f],RightArm:[301f,21f,0f]},ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"Flascon"}}]}

execute as @e[tag=statueLeft] at @s run tp @s ~ ~ ~ -90 0
execute as @e[tag=statueRight] at @s run tp @s ~ ~ ~ 90 0

# KEREL
summon sniffer 0 65 -42 {Invulnerable:1b,PersistenceRequired:1b,Tags:["spawnSniffer"],CustomName:'[{"text":"Ke","color":"red","bold":true},{"text":"rel ","color":"gold"},{"text":"Ja","color":"yellow"},{"text":"mes","color":"green"},{"text":" San","color":"blue"},{"text":"tia","color":"dark_purple"},{"text":"go","color":"light_purple"}]'}