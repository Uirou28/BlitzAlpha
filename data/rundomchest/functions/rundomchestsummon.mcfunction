summon armor_stand ~ ~ ~ {Invisible:true,NoGravity:true,Tags:["rundomchest"],Marker:true}
$spreadplayers ~ ~ 1 $(length) under $(height) false @n[type=armor_stand,tag=rundomchest]
scoreboard players add @a[tag=op] NoChests 1
execute if score @a[tag=op,limit=1] NoChests < @a[tag=op,limit=1] SNoChests run function rundomchest:rundomchestsummon
execute if score @a[tag=op,limit=1] NoChests = @a[tag=op,limit=1] SNoChests run function rundomchest:rundomchestsummon2