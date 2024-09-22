tellraw @a {"text":"チェストの中身が更新されました"}
execute as @e[type=armor_stand,tag=rundomchest] at @s run setblock ~ ~ ~ air
execute as @e[type=armor_stand,tag=rundomchest] at @s run kill @e[type=item,distance=..1]
execute as @e[type=armor_stand,tag=rundomchest] at @s run setblock ~ ~ ~ chest{LootTable:"rundomchest:chest1"}