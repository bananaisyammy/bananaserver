kill @e[type=text_display,tag=music_text]
playsound entity.item_frame.rotate_item master @a 1039.0 53.0 1050.5 1

execute if score @s music_number matches 1 run summon text_display 1039.0 53.26 1050.5 {text:'{"text":"ポーカーフェイス","color":"#eeeeee","bold":true}',Rotation:[270f,0f],background:0,shadow:true,Tags:["music_text"]}
execute if score @s music_number matches 1 run data merge entity @e[type=text_display,tag=music_text,limit=1] {transformation:{scale:[2.0,2.0,2.0]}}
execute if score @s music_number matches 1 run summon text_display 1039.0 52.55 1050.5 {text:'{"text":"難易度：★★★","color":"#eeeeee"}',Rotation:[270f,0f],background:0,Tags:["music_text"]}
execute if score @s music_number matches 1 run summon text_display 1039.0 52.18 1050.5 {text:'{"text":"時間：1:26","color":"#eeeeee"}',Rotation:[270f,0f],background:0,Tags:["music_text"]}

execute if score @s music_number matches 2 run summon text_display 1039.0 53.26 1050.5 {text:'{"text":"Awaken","color":"#eeeeee","bold":true}',Rotation:[270f,0f],background:0,shadow:true,Tags:["music_text"]}
execute if score @s music_number matches 2 run data merge entity @e[type=text_display,tag=music_text,limit=1] {transformation:{scale:[2.0,2.0,2.0]}}
execute if score @s music_number matches 2 run summon text_display 1039.0 52.55 1050.5 {text:'{"text":"難易度：★★★★★","color":"#eeeeee"}',Rotation:[270f,0f],background:0,Tags:["music_text"]}
execute if score @s music_number matches 2 run summon text_display 1039.0 52.18 1050.5 {text:'{"text":"時間：1:52","color":"#eeeeee"}',Rotation:[270f,0f],background:0,Tags:["music_text"]}

execute if score @s music_number matches 3 run summon text_display 1039.0 53.26 1050.5 {text:'{"text":"ウタタネロンド","color":"#eeeeee","bold":true}',Rotation:[270f,0f],background:0,shadow:true,Tags:["music_text"]}
execute if score @s music_number matches 3 run data merge entity @e[type=text_display,tag=music_text,limit=1] {transformation:{scale:[2.0,2.0,2.0]}}
execute if score @s music_number matches 3 run summon text_display 1039.0 52.55 1050.5 {text:'{"text":"難易度：★","color":"#eeeeee"}',Rotation:[270f,0f],background:0,Tags:["music_text"]}
execute if score @s music_number matches 3 run summon text_display 1039.0 52.18 1050.5 {text:'{"text":"時間：1:48","color":"#eeeeee"}',Rotation:[270f,0f],background:0,Tags:["music_text"]}

execute as @s if score @s music_number matches 1 run schedule function mynamespace:change_music/set_2 1t
execute as @s if score @s music_number matches 2 run schedule function mynamespace:change_music/set_3 1t
execute as @s if score @s music_number matches 3 run schedule function mynamespace:change_music/set_1 1t