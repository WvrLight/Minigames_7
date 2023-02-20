kill @e[tag=spawnText]

summon text_display -2 69.5 -35 {Tags:["spawnText","statueText","statueLight"],text:'[{"text":"Wvr","color":"gold","bold":true},{"text":"Light","color":"aqua"}]'}

summon text_display 2 69.5 -35 {Tags:["spawnText","statueText","statueShane"],text:'{"text":"RemorsEcoDe","color":"dark_red","bold":true}'}
summon text_display 2 69.75 -35 {Tags:["spawnText","statueText","statueShane"],text:'{"text":"Server Owner","color":"gold","bold":true}'}

# TITLE
summon text_display -7 72 -28 {Tags:["spawnText","infoText","info_title"],text:'[{"text":"Minigames","color":"dark_red","bold":true},{"text":"_7","color":"aqua","bold":true}]'}

#summon text_display -7 69 -28 {Tags:["spawnText","infoText","info_text"],alignment:left,text:'{"text":"Lorem ipsum dolor sit amet \\nconsectutur ading elipiscit"}'}

# VERSION TITLE
summon text_display -7 70 -28 {Tags:["spawnText","infoText","version"],text:'[{"text":"Server Version: ","color":"green","bold":true},{"text":"7.0.1","color":"white"}]'}
summon text_display -7 69 -28 {Tags:["spawnText","infoText","versionMessageLabel"],text:'{"text":"VERSION MESSAGE","color":"green","bold":true,"underlined":true}'}

# VERSION MESSAGES
# 7.0.1
summon text_display -7 68.5 -28 {line_width:256,Tags:["spawnText","infoText","versionMessage"],text:'[{"text":"M_7 is here! First version, and first message!","color":"green","bold":true},{"text":"\\n\\nArena (formerly PvP) construction is fully underway, as is tradition. Of course, classic minigames to come once we\'re done playing around with the new 1.20 tools.","color":"white","bold":false}]'}

execute as @e[tag=infoText] at @s run tp @s ~ ~ ~ -90 0