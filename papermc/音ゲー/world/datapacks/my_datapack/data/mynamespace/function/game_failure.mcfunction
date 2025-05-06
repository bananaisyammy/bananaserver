scoreboard players set @s deaths 0
scoreboard players set @s playing 0

title @s times 2 30 20
title @s title {"text":"Game Over...","bold":true,"color":"red"}

stopsound @a master custom.utatane_rondo
stopsound @a master custom.poker_face
stopsound @a master custom.awaken



playsound item.totem.use master @s ~ ~ ~ 0.3 0.8

item replace entity @s hotbar.8 with air

function mynamespace:chart/clear

kill @e[tag=note]
kill @e[tag=note_detector]