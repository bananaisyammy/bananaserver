title @a times 2 30 20
title @a title {"text":"Clear!!!","bold":true,"color":"yellow"}

stopsound @a master custom.utatane_rondo
stopsound @a master custom.poker_face
stopsound @a master custom.awaken

execute as @a at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.5

item replace entity @a hotbar.8 with air

effect clear @a

kill @e[tag=note_detector]

schedule function mynamespace:game_clear_flow/return 40t