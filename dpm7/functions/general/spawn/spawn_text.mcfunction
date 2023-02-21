# Used only for re-generating M_7 spawn text

kill @e[tag=spawnText]

summon text_display -2 69.5 -35 {Tags:["spawnText","statueText","statueLight"],text:'[{"text":"Wvr","color":"gold","bold":true},{"text":"Light","color":"aqua"}]'}

summon text_display 2 69.5 -35 {Tags:["spawnText","statueText","statueShane"],text:'{"text":"RemorsEcoDe","color":"dark_red","bold":true}'}
summon text_display 2 69.75 -35 {Tags:["spawnText","statueText","statueShane"],text:'{"text":"Server Owner","color":"gold","bold":true}'}

# TITLE
summon text_display -7 72 -28 {Tags:["spawnText","infoText","info_title"],text:'[{"text":"Minigames","color":"dark_red","bold":true},{"text":"_7","color":"aqua","bold":true}]'}

#summon text_display -7 69 -28 {Tags:["spawnText","infoText","info_text"],alignment:left,text:'{"text":"Lorem ipsum dolor sit amet \\nconsectutur ading elipiscit"}'}

# VERSION TITLE
summon text_display -7 71 -28 {Tags:["spawnText","infoText","version"],text:'[{"text":"Server Version: ","color":"light_purple","bold":true},{"text":"b1","color":"white"}]'}
summon text_display -7 70 -28 {Tags:["spawnText","infoText","versionMessageLabel"],text:'{"text":"VERSION MESSAGE","color":"gold","bold":true,"underlined":true}'}

# VERSION MESSAGES
# b1
summon text_display -7 68 -28 {alignment:"left",line_width:300,Tags:["spawnText","infoText","versionMessage"],text:'[{"text":"M_7 is here! First version, and first message!","color":"green","bold":true},{"text":"\\n\\nArena (formerly PvP) construction is fully underway, as is tradition. Of course, classic minigames to come once we\'re done playing around with the new 1.20 tools.\\n\\nAlso, we have an actual spawn now :O","color":"white","bold":false}]',background:0}

execute as @e[tag=infoText] at @s run tp @s ~ ~ ~ -90 0

# DIRECTIONS
summon text_display 0 68 -5 {Tags:["spawnText","guideText","guideInfo"],text:'{"text":"Information Hub","color":"aqua","bold":true}'}

summon text_display 0 68 5 {Tags:["spawnText","guideText","guideMinigames"],text:'{"text":"Minigames Hub","color":"red","bold":true}'}
execute as @e[tag=guideMinigames] at @s run tp @s ~ ~ ~ 180 0