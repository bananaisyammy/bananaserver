title @a times 2 30 20
title @a title {"text":"Start!","bold":true,"color":"aqua"}

item replace entity @a hotbar.8 with music_disc_11[custom_name='{translate:"Retire",italic:false,color:red}']

# playsound
schedule function mynamespace:music/main 1t

# ノート検知器
function mynamespace:detect_note/summon_detector