scoreboard players add tick start 1
execute if score tick start >= twoten num run scoreboard players add second start 1
execute if score tick start >= twoten num run scoreboard players remove @e[type=player,scores={timeforrespawn=1..}] timeforrespawn 1
execute if score tick start >= twoten num run scoreboard players add compass start 1
execute if score tick start >= twoten num run scoreboard players remove tick start 20

execute if entity @r[tag=nocompass] run scoreboard players add compass start 1
execute if score compass start >= twoten num run give @e[type=player,tag=nocompass,gamemode=survival] compass{display:{"Name":'{"color":"red","text":"Tracker"}'},Tags:["tracker"]} 1
execute if score compass start >= twoten num run tag @e[type=player,tag=nocompass,gamemode=survival] remove nocompass
execute if score compass start >= twoten num run scoreboard players remove compass start 20

execute if score @r[tag=starter] language = English language run scoreboard players operation Duration show = second start
execute if score @r[tag=starter] language = Chinese language run scoreboard players operation 游戏时间 show = second start
#gamesets
execute if score gammaOverride settings = true settings as @s run effect give @a night_vision 999999 0 true
execute as @a[team=hunter] run scoreboard players set @s show 2
execute as @a[team=runner] run scoreboard players set @s show 1
execute as @a[team=spectator] run scoreboard players reset @s show
#---deathDetect---
#aimnottokillhunt
execute unless score winCondition settings matches 1 as @e[type=player,team=hunter] unless score @s death matches 0 run scoreboard players operation @s timeforrespawn = timeForRespawn settings
execute unless score winCondition settings matches 1 as @e[type=player,team=hunter] unless score @s death matches 0 run scoreboard players set @s death 0
execute as @a[team=hunter,scores={timeforrespawn=1..,language=0}] run title @s actionbar [{"text":"Respawning: ","color":"dark_purple"},{"score":{"name":"@s","objective":"timeforrespawn"},"color":"light_purple"},{"text":"s","color":"light_purple"}]
execute as @a[team=hunter,scores={timeforrespawn=1..,language=1}] run title @s actionbar [{"text":"复活中: ","color":"dark_purple"},{"score":{"name":"@s","objective":"timeforrespawn"},"color":"light_purple"},{"text":"s","color":"light_purple"}]
gamemode spectator @a[scores={timeforrespawn=1..}]
tag @a[scores={timeforrespawn=0}] add nocompass
gamerule doImmediateRespawn true
gamerule showDeathMessages false
kill @a[scores={timeforrespawn=0}]
gamerule doImmediateRespawn false
gamerule showDeathMessages true
scoreboard players set @a[scores={timeforrespawn=0}] death 0
gamemode survival @a[scores={timeforrespawn=0}]
scoreboard players set @a[scores={timeforrespawn=0}] timeforrespawn -1
#aimtokillhunt
execute if score winCondition settings matches 1 as @a[team=hunter,tag=!dead] unless score @s death matches 0 run tag @s add dead
execute if score winCondition settings matches 1 as @a[team=hunter] unless score @s death matches 0 run scoreboard players set @s death 0
#runnerdeath
execute as @a[team=runner,tag=!dead] unless score @s death matches 0 run tag @s add dead
execute as @a[team=runner] unless score @s death matches 0 run scoreboard players set @s death 0
#-norespawn
execute as @a[tag=dead] run title @s actionbar {"text":"You can not respawn","color":"dark_purple"}
execute as @a[tag=dead] run title @s actionbar {"text":"您已无法复活","color":"dark_purple"}
gamemode spectator @a[tag=dead]
team join spectator @a[tag=dead]
#winDetect-Hunter
execute unless entity @a[team=runner] run function manhunt:gaming/hunterwin
#winDetect-Runner
execute if score winCondition settings matches 0 run execute at @a if dimension minecraft:the_end unless entity @e[type=minecraft:ender_dragon] run function manhunt:gaming/runnerwin
execute if score winCondition settings matches 1 run execute unless entity @a[team=hunter] run function manhunt:gaming/runnerwin
execute if score winCondition settings matches 2 run execute as @a[team=runner] store result score diamond detect run clear @a[team=runner] diamond 1
execute if score winCondition settings matches 2 if score diamond detect matches 1 run function manhunt:gaming/runnerwin
execute if score winCondition settings matches 3 run execute as @a[team=runner] store result score netherite detect run clear @a[team=runner] netherite_ingot 1
execute if score winCondition settings matches 3 if score netherite detect matches 1 run function manhunt:gaming/runnerwin
#compass
execute unless entity @r[tag=pointed] run tag @r[team=runner] add pointed
execute in minecraft:overworld at @p[tag=pointed] run setworldspawn ~ ~ ~
tag @a[team=!runner] remove pointed
execute as @p[tag=pointed] run title @a[scores={language=1},team=hunter,nbt={SelectedItem:{tag:{Tags:["tracker"]}}}] actionbar [{"text":"目标: ","color":"dark_green"},{"selector":"@p[tag=pointed]","color":"green"}]
execute as @p[tag=pointed] run title @a[scores={language=0},team=hunter,nbt={SelectedItem:{tag:{Tags:["tracker"]}}}] actionbar [{"text":"Target: ","color":"dark_green"},{"selector":"@p[tag=pointed]","color":"green"}]
#detectHunterRespawnPlace
execute at @a[team=hunter,gamemode=survival,tag=nocompass] run summon armor_stand ~ 500 ~ {NoGravity:1b,Tags:["hunterspawn"]}
execute at @e[type=armor_stand,tag=spawnpoint] run kill @e[distance=..20,tag=hunterspawn]
execute at @p[tag=pointed] run summon armor_stand ~ 500 ~ {NoGravity:1b,Tags:["pointedplayer"]}
execute at @e[type=armor_stand,tag=pointedplayer] if entity @e[type=armor_stand,tag=hunterspawn,distance=..20] at @e[type=armor_stand,tag=hunterspawn] as @p[team=hunter] at @e[type=armor_stand,tag=spawnpoint] positioned over world_surface run spawnpoint @s ~ ~ ~
execute at @e[type=armor_stand,tag=pointedplayer] if entity @e[type=armor_stand,tag=hunterspawn,distance=..20] at @e[type=armor_stand,tag=hunterspawn] as @p[team=hunter] at @e[type=armor_stand,tag=spawnpoint] positioned over world_surface run tp @s ~ ~ ~
kill @e[tag=pointedplayer]
kill @e[tag=hunterspawn]