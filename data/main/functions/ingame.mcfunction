execute as @a[tag=!kansen] run scoreboard players add @e[tag=game,type=armor_stand] countplayer 1
execute as @e[type=armor_stand,tag=game,scores={countplayer=1}] run function victory:winner
tag @a[scores={death=1..}] add kansen
gamemode spectator @a[tag=kansen]
scoreboard players set @e countplayer 0