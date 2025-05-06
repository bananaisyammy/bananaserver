# ノート移動
# 初期ノート（face）が存在したら、move_note_faceを実行
execute as @e[type=block_display,tag=init_note] at @s run function mynamespace:move_note_face
# ノート（body）が存在したら、tpを実行
execute as @e[type=item_display,tag=note] at @s run tp @s ~ ~ ~-0.5

# ノート 削除タイマー
execute as @e[tag=note] run scoreboard players add @s note_kill_timer 1
execute as @e[scores={note_kill_timer=59}] run kill @s


# 通過判定
execute as @a at @s if entity @e[type=shulker,tag=jumpover,x=1047,y=51,z=1061.5,dx=6,dy=5,dz=0] run function mynamespace:lighting
execute as @a at @s if entity @e[type=shulker,tag=onjump,x=1047,y=51,z=1061.5,dx=6,dy=5,dz=0] run function mynamespace:lighting
execute as @a at @s if entity @e[type=shulker,tag=avoid,x=1047,y=51,z=1059.5,dx=6,dy=5,dz=0] run function mynamespace:lighting
# 失敗判定
execute as @e[type=shulker] at @s if entity @p[distance=..0.8] run function mynamespace:step_miss_e
execute as @a at @s if entity @e[type=shulker,distance=..0.8] run function mynamespace:step_miss_p
# 成功判定
execute as @a at @s if entity @e[type=shulker,x=1047,y=51,z=1057,dx=6,dy=5,dz=0] unless entity @e[type=shulker,scores={hit_note=1},x=1047,y=51,z=1058,dx=6,dy=5,dz=0] run function mynamespace:step_success


# 死亡検知
execute as @a[scores={deaths=1..}] at @s run function mynamespace:game_failure

# リタイア検知
execute as @e[type=interaction,tag=stage] on target run execute as @s[nbt={SelectedItem:{id:"minecraft:music_disc_11"}}] run kill @s
execute as @e[type=interaction,tag=stage] run data remove entity @s interaction

# first join
execute as @a unless score @s first_join matches 0 run function mynamespace:first_join