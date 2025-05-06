tp @a 1050.5 52.0 1060.0 0.0 0.0

execute as @a at @s run playsound entity.player.teleport master @a ~ ~ ~ 0.7

title @a times 2 30 5
title @a title {"text":"Ready?","bold":true,"color":"green"}

# load chart
function mynamespace:chart/main


schedule function mynamespace:start_flow/3 40t