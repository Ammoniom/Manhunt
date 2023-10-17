tag @a remove starter
scoreboard players set @a menu 3
tag @s add starter
#playerSets
execute as @a at @p[tag=starter] positioned over world_surface run tp @s ~ ~ ~
execute as @a at @p[tag=starter] positioned over world_surface run spawnpoint @s ~ ~ ~
effect clear @a
effect give @a saturation 10 10 true
effect give @a instant_health 1 10 true
kill @e[type=!minecraft:player,type=!chest_minecart]
kill @e[type=minecraft:item]
time set 0
weather clear
gamemode spectator @a[team=spectator]
gamemode survival @a[team=!spectator]
clear @a
xp set @a 0 points
xp set @a 0 levels
advancement revoke @a everything
recipe take @a *

summon armor_stand ~ 500 ~ {NoGravity:1b,Tags:["spawnpoint"]}
forceload add ~ ~

#scoreboardSets
scoreboard players set @a health 20
scoreboard players set @a death 0
scoreboard players set @a timeforrespawn -1

execute if score @s language = English language run scoreboard objectives modify show displayname {"text":"ManHunt","color":"#3A88FE"}
execute if score @s language = English language run scoreboard players set By-Ammonia_ show 0
execute if score @s language = English language run scoreboard players set Duration show 0

execute if score @s language = Chinese language run scoreboard objectives modify show displayname {"text":"猎人游戏","color":"#3A88FE"}
execute if score @s language = Chinese language run scoreboard players set 作者-Ammonia_ show 0
execute if score @s language = Chinese language run scoreboard players set 游戏时间 show 0
#spectator
effect give @a[team=spectator] night_vision 999999 0 true
effect give @a[team=spectator] speed 999999 3 true
#gamesets
execute if score interAllyFire settings = false settings run team modify hunter friendlyFire false
execute if score interAllyFire settings = false settings run team modify runner friendlyFire false
execute if score interAllyFire settings = true settings run team modify hunter friendlyFire true
execute if score interAllyFire settings = true settings run team modify runner friendlyFire true

execute if score healthDisplay settings = false settings run scoreboard objectives setdisplay list
execute if score healthDisplay settings = false settings run scoreboard objectives setdisplay below_name
execute if score healthDisplay settings = true settings run scoreboard objectives setdisplay list health
execute if score healthDisplay settings = true settings run scoreboard objectives setdisplay below_name health

scoreboard players set start start 1
scoreboard objectives setdisplay sidebar show

playsound entity.player.levelup master @a
#title
title @a[team=hunter] title {"text":"You are hunter!","color":"dark_red","bold":"true"}
title @a[team=hunter] subtitle [{"text":"Try to hunt down [","color":"red"},{"selector":"@a[team=runner]"},{"text":"]"}]
title @a[team=runner] title {"text":"You are runner!","color":"dark_green","bold":"true"}
title @a[team=runner] subtitle {"text":"Reach your goal without dying!","color":"green"}
title @a[team=spectator] title {"text":"You are spectator!","color":"#AA924E","bold":"true"}
title @a[team=spectator] subtitle {"text":"Spectating game..","color":"#AE8032"}

execute as @a run function manhunt:menu/menu with entity @s

team modify hunter prefix {"text":"[Hunter]","color":"red"}
team modify runner prefix {"text":"[Runner]","color":"green"}
team modify spectator prefix {"text":"[Spectator]","color":"#AA924E"}

give @a[team=hunter] compass{display:{"Name":'{"color":"red","text":"Tracker"}'},Tags:["tracker"]} 1