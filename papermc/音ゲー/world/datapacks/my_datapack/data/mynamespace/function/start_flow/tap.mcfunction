scoreboard players set @s playing 1
scoreboard players set Good Score 0
scoreboard players set Miss Score 0

effect give @s instant_health 1 3 true
effect give @s regeneration infinite 0 true

playsound entity.player.levelup master @s ~ ~ ~ 0.4

particle minecraft:glow 1050.5 51.5 1054.8 0.1 0.1 0.1 0.1 7

schedule function mynamespace:start_flow/ready 30t