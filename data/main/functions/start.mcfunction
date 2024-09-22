gamemode survival @a
effect clear @a
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule keepInventory false
gamerule naturalRegeneration true
gamerule fallDamage false
difficulty normal
execute as @a at @s if block ~ ~-1 ~ gray_wool run tag @s add kansen
summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["game"],Marker:true}
scoreboard objectives add countplayer dummy
effect give @a saturation 1 60 true
effect give @a instant_health 1 5 true
clear @a
function main:book
setworldspawn ~ ~ ~
function main:item
function rundomchest:chestreload
xp set @a 0
scoreboard objectives add death deathCount
scoreboard players set @a death 0
schedule function rundomchest:chestreload 8400 replace
schedule function main:glowing 12000 replace