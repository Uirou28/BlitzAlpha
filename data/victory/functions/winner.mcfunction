title @a title [{"selector":"@a[tag=!kansen]"},{"text":"の勝利!!"}]
tellraw @a [{"text":"(§1クリックで終了§r)","bold":true,"clickEvent":{"action":"run_command","value":"/function main:finish"}}]
scoreboard players set @e[type=armor_stand,tag=game] countplayer 0
tag @a remove kansen
kill @e[type=armor_stand,tag=game]