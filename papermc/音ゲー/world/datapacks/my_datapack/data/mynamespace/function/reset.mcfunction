scoreboard players set @a playing 0

effect give @a instant_health 1 3

# music_heading
kill @e[type=text_display,tag=music_heading]
summon text_display 1039.0 54.3 1050.5 {text:'{"text":"♪ Music ♪","color":"#ccaa66"}',Rotation:[270f,0f],background:0,shadow:true,Tags:["music_heading","music_heading_c"]}
data merge entity @e[type=text_display,tag=music_heading,limit=1] {transformation:{scale:[1.5,1.5,1.5]}}
summon text_display 1039.0 54.25 1048.35 {text:'{"text":"▬▬▬▬▬▬▬▬","color":"#ccaa66","bold":true}',Rotation:[270f,0f],background:0,shadow:true,Tags:["music_heading","music_heading_mu"]}
data merge entity @e[type=text_display,tag=music_heading_mu,limit=1] {transformation:{scale:[2,2,2]}}
summon text_display 1039.0 54.25 1052.65 {text:'{"text":"▬▬▬▬▬▬▬▬","color":"#ccaa66","bold":true}',Rotation:[270f,0f],background:0,shadow:true,Tags:["music_heading","music_heading_hu"]}
data merge entity @e[type=text_display,tag=music_heading_hu,limit=1] {transformation:{scale:[2,2,2]}}
summon text_display 1039.0 51.25 1048.445 {text:'{"text":"▬▬▬▬▬▬▬▬▬","color":"#ccaa66","bold":true}',Rotation:[270f,0f],background:0,shadow:true,Tags:["music_heading","music_heading_ms"]}
data merge entity @e[type=text_display,tag=music_heading_ms,limit=1] {transformation:{scale:[2,2,2]}}
summon text_display 1039.0 51.25 1052.525 {text:'{"text":"▬▬▬▬▬▬▬▬▬","color":"#ccaa66","bold":true}',Rotation:[270f,0f],background:0,shadow:true,Tags:["music_heading","music_heading_hs"]}
data merge entity @e[type=text_display,tag=music_heading_hs,limit=1] {transformation:{scale:[2,2,2]}}

# music_text
kill @e[type=text_display,tag=music_text]
summon text_display 1039.0 53.26 1050.5 {text:'{"text":"ウタタネロンド","color":"#eeeeee","bold":true}',Rotation:[270f,0f],background:0,shadow:true,Tags:["music_text"]}
data merge entity @e[type=text_display,tag=music_text,limit=1] {transformation:{scale:[2,2,2]}}
summon text_display 1039.0 52.55 1050.5 {text:'{"text":"難易度：★","color":"#eeeeee"}',Rotation:[270f,0f],background:0,Tags:["music_text"]}
summon text_display 1039.0 52.18 1050.5 {text:'{"text":"時間：1:48","color":"#eeeeee"}',Rotation:[270f,0f],background:0,Tags:["music_text"]}
scoreboard players set @a music_number 1

# tapping (interaction)
kill @e[type=interaction,tag=tapping]
summon interaction 1050.5 50.5 1062.5 {Tags:["tapping","stage"],width:8,height:7}

# sign
setblock 1039 51 1050 oak_wall_sign[facing=east]{id:"sign",front_text:{color:"yellow",has_glowing_text:1b,messages:['{"text":""}','{"text":">> TAP <<","bold":true,"clickEvent":{"action":"run_command","value":"function mynamespace:change_music/main"}}','{"text":"to Change","bold":true}','{"text":""}']}}
setblock 1050 51 1054 oak_wall_sign[facing=north]{id:"sign",front_text:{color:"cyan",has_glowing_text:1b,messages:['{"text":""}','{"text":">> TAP <<","bold":true,"clickEvent":{"action":"run_command","value":"execute as @s if score @s playing matches 0 run function mynamespace:start_flow/tap"}}','{"text":"to Start","bold":true}','{"text":""}']}}
setblock 1065 51 1050 warped_wall_sign[facing=west]{id:"sign",front_text:{color:"light_blue",has_glowing_text:1b,messages:['{"text":""}','{"text":"My SNS","bold":true,"clickEvent":{"action":"run_command","value":"execute as @s run function mynamespace:show_sns"}}','{"text":"Links","bold":true,"underlined":true}','{"text":""}']}}

# doll
kill @e[type=armor_stand,tag=doll]
summon minecraft:armor_stand 1067.5 53.5 1050.5 {Tags:["doll"],Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:true,Rotation:[90f],ArmorItems:[{id:"leather_boots",Count:1,components:{dyed_color:{rgb:107264}}},{id:"leather_leggings",Count:1,components:{dyed_color:{rgb:107264}}},{id:"leather_chestplate",Count:1,components:{dyed_color:{rgb:107264}}},{id:"player_head",Count:1,components:{profile:{name:"Sasterisk24"}}}],HandItems:[{id:"iron_sword",Count:1},{id:"slime_ball",Count:1}]}
# doll_text
kill @e[type=text_display,tag=doll_text]
summon text_display 1065.99999 56.26 1050.5 {Tags:["doll_text","creator"],text:'{"text":"制作者","color":"#cbcbcb","bold":true}',Rotation:[90f],background:0,shadow:true}
data merge entity @e[type=text_display,tag=creator,limit=1] {transformation:{scale:[2,2,2]}}
summon text_display 1065.99999 52.3 1050.48 {Tags:["doll_text","mcid"],text:'{"text":"Sasterisk24","color":"#47b247","bold":true}',Rotation:[90f],background:0,shadow:true}
data merge entity @e[type=text_display,tag=mcid,limit=1] {transformation:{scale:[1.4,1.4,1.4]}}

# title_text
kill @e[type=text_display,tag=title_text]
summon text_display 1050.5 55.07 1043.0 {Tags:["title_text","text_1"],text:'{"text":"Rhythm","color":"aqua","bold":true}',background:0,shadow:true}
data merge entity @e[type=text_display,tag=text_1,limit=1] {transformation:{scale:[5,5,5]}}
summon text_display 1050.5 53.55 1043.0 {Tags:["title_text","text_2"],text:'{"text":"Parkour","color":"aqua","bold":true}',background:0,shadow:true}
data merge entity @e[type=text_display,tag=text_2,limit=1] {transformation:{scale:[5,5,5]}}

# stopsound
stopsound @a master custom.utatane_rondo
stopsound @a master custom.poker_face
stopsound @a master custom.awaken

# chart clear
function mynamespace:chart/clear

kill @e[tag=note]
kill @e[tag=note_detector]

scoreboard players set Good Score 0
scoreboard players set Miss Score 0

tellraw @a {"text":"リセットしました"}