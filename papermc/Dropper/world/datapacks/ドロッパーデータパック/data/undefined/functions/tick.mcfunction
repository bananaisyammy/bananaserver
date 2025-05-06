effect give @a minecraft:night_vision 11 0 true
effect give @a minecraft:saturation 11 10 true
effect give @a minecraft:regeneration 11 10 true

item replace entity @a container.17 with minecraft:paper
execute as @e[type=item,nbt={Item:{id:"minecraft:paper"}}] if data entity @s Thrower run function undefined:paper

spawnpoint @a -1 316 0 -90

execute as @a[x=-1,y=316,z=0,dx=0,dy=1,dz=0] at @s run function undefined:reset

data merge block -4 317 -1 {Age:1000L}
data merge block -4 317 0 {Age:1000L}
data merge block -4 317 1 {Age:1000L}

execute as @a[x=0,y=314,z=0,dx=0,dy=0,dz=0] at @s run function undefined:fire

data merge block -9 214 -1 {Age:1000L}
data merge block -9 214 0 {Age:1000L}
data merge block -9 214 1 {Age:1000L}
data merge block -8 214 -1 {Age:1000L}
data merge block -8 214 0 {Age:1000L}
data merge block -8 214 1 {Age:1000L}
data merge block -7 214 -1 {Age:1000L}
data merge block -7 214 0 {Age:1000L}
data merge block -7 214 1 {Age:1000L}

execute as @a[x=-2,y=314,z=0,dx=0,dy=0,dz=0] at @s run fill -3 314 0 -3 315 0 minecraft:air destroy
execute as @a[x=-12,y=222,z=-4,dx=9,dy=2,dz=9] at @s run fill -7 215 -1 -9 215 1 minecraft:air destroy

execute as @a[x=-2,y=313,z=-1,dx=0,dy=1,dz=2] at @s run gamerule fallDamage true
execute as @a[x=0,y=313,z=-1,dx=0,dy=1,dz=2] at @s run gamerule fallDamage true

execute in minecraft:overworld as @a[x=-10,y=212,z=-2,dx=4,dy=3,dz=4] at @s run execute in minecraft:the_end run tp @s 108 430 101

execute in minecraft:the_end as @a[x=50,y=0,z=50,dx=100,dy=3,dz=100] at @s run execute in minecraft:overworld run tp @s 501 430 501

execute in minecraft:overworld as @a[x=505,y=-58,z=494,dx=3,dy=3,dz=2] at @s run tp @s 1087 193 884 -90 ~

execute in minecraft:overworld as @a[x=1104,y=-30,z=880,dx=15,dy=3,dz=15] at @s run tp @s 1245 317 1222 0 ~

execute in minecraft:overworld as @a[x=1200,y=-50,z=1179,dx=100,dy=3,dz=100] at @s run tp @s 1552 317 1473

execute in minecraft:overworld as @a[x=1547,y=-38,z=1474,dx=0,dy=3,dz=0] at @s run tp @s 1704 316 1703

execute in minecraft:overworld as @a[x=1703,y=59,z=1703,dx=1,dy=3,dz=1] at @s run tp @s 2042 317 2001

execute in minecraft:overworld as @a[x=2042,y=-64,z=2026,dx=0,dy=3,dz=0] at @s run gamerule fallDamage false
execute in minecraft:overworld as @a[x=2042,y=-64,z=2026,dx=0,dy=3,dz=0] at @s run tp @s -1 315 0 -90 ~
