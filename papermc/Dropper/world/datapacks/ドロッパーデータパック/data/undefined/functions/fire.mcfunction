execute as @a at @s run scoreboard players add @s fire 1

execute as @a[scores={fire=1}] at @s run setblock 15 314 -1 minecraft:fire
execute as @a[scores={fire=1}] at @s run setblock 15 315 -1 minecraft:barrier
execute as @a[scores={fire=1}] at @s run playsound minecraft:item.firecharge.use master @s ~ ~ ~

execute as @a[scores={fire=10}] at @s run setblock 13 314 1 minecraft:fire
execute as @a[scores={fire=10}] at @s run setblock 13 315 1 minecraft:barrier
execute as @a[scores={fire=10}] at @s run playsound minecraft:item.firecharge.use master @s ~ ~ ~

execute as @a[scores={fire=20}] at @s run setblock 11 314 0 minecraft:fire
execute as @a[scores={fire=20}] at @s run setblock 11 315 0 minecraft:barrier
execute as @a[scores={fire=20}] at @s run playsound minecraft:item.firecharge.use master @s ~ ~ ~

execute as @a[scores={fire=30}] at @s run setblock 8 314 -1 minecraft:fire
execute as @a[scores={fire=30}] at @s run setblock 8 315 -1 minecraft:barrier
execute as @a[scores={fire=30}] at @s run playsound minecraft:item.firecharge.use master @s ~ ~ ~

execute as @a[scores={fire=40}] at @s run setblock 6 314 1 minecraft:fire
execute as @a[scores={fire=40}] at @s run setblock 6 315 1 minecraft:barrier
execute as @a[scores={fire=40}] at @s run playsound minecraft:item.firecharge.use master @s ~ ~ ~

execute as @a[scores={fire=50}] at @s run setblock 4 314 0 minecraft:fire
execute as @a[scores={fire=50}] at @s run setblock 4 315 0 minecraft:barrier
execute as @a[scores={fire=50}] at @s run playsound minecraft:item.firecharge.use master @s ~ ~ ~


execute as @a[scores={fire=60}] at @s run fill 2 314 -1 2 314 1 minecraft:fire
execute as @a[scores={fire=60}] at @s run fill 2 315 -1 2 315 1 minecraft:barrier
execute as @a[scores={fire=60}] at @s run playsound minecraft:item.firecharge.use master @s ~ ~ ~