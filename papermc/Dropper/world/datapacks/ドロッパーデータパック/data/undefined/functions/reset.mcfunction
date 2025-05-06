scoreboard players set @a fire -1

setblock -3 314 0 minecraft:iron_door[facing=east,half=lower,hinge=right,open=false,powered=false]
setblock -3 315 0 minecraft:iron_door[facing=east,half=upper,hinge=right,open=false,powered=false]

execute in minecraft:overworld as @a run fill 15 314 -1 2 315 1 minecraft:air replace minecraft:fire
execute in minecraft:overworld as @a run fill 15 314 -1 2 315 1 minecraft:air replace minecraft:barrier

execute in minecraft:overworld as @a run fill -7 215 -1 -9 215 1 minecraft:yellow_glazed_terracotta