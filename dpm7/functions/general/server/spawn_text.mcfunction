kill @e[tag=spawnText]

summon text_display -2 69.5 -35 {Tags:["spawnText","text_statueLight"],text:'[{"text":"Wvr","color":"gold","bold":true},{"text":"Light","color":"aqua"}]'}

summon text_display 2 69.5 -35 {Tags:["spawnText","text_statueShane"],text:'{"text":"RemorsEcoDe","color":"dark_red","bold":true}'}
summon text_display 2 69.75 -35 {Tags:["spawnText","text_statueShane"],text:'{"text":"Server Owner","color":"gold","bold":true}'}

summon text_display -7 72 -28 {Tags:["spawnText","infoText","info_title"],text:'[{"text":"Minigames","color":"dark_red","bold":true},{"text":"_7","color":"aqua","bold":true}]'}

summon text_display -7 71 -28 {Tags:["spawnText","infoText","info_text"],alignment:left,text:'{"text":"Lorem ipsum dolor sit amet \\nconsectutur ading elipiscit"}'}
execute as @e[tag=infoText] at @s run tp @s ~ ~ ~ -90 0