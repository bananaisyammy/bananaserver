tag @e[type=shulker,tag=jumpover,x=1047,y=51,z=1061.5,dx=6,dy=5,dz=0] remove jumpover
tag @e[type=shulker,tag=onjump,x=1047,y=51,z=1061.5,dx=6,dy=5,dz=0] remove onjump
tag @e[type=shulker,tag=avoid,x=1047,y=51,z=1059.5,dx=6,dy=5,dz=0] remove avoid

fill 1045 51 1061 1045 56 1061 redstone_block
fill 1055 51 1061 1055 56 1061 redstone_block

execute as @s at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 0.2 1
execute as @s at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 0.2 0.5
execute as @s at @s run playsound block.note_block.bell master @a ~ ~ ~ 0.2 2

particle note 1047.5 51.0 1062.5 0 0 0 1 1
particle note 1048.5 51.0 1062.5 0 0 0 1 1
particle note 1049.5 51.0 1062.5 0 0 0 1 1
particle note 1050.5 51.0 1062.5 0 0 0 1 1
particle note 1051.5 51.0 1062.5 0 0 0 1 1
particle note 1052.5 51.0 1062.5 0 0 0 1 1
particle note 1053.5 51.0 1062.5 0 0 0 1 1

schedule function mynamespace:lighting_after 4