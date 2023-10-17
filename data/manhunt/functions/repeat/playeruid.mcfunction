#giveUid
scoreboard players add @a uid 0
tag @r add a
execute as @a[tag=a] if score @s uid = zero num as @s run scoreboard players add players uid 1
execute as @a[tag=a] if score @s uid = zero num run team join spectator @s
execute as @a[tag=a] if score @s uid = zero num as @s run scoreboard players operation @s uid = players uid
tag @a remove a
#setTemperUid
scoreboard players set V1 uid 0
execute as @a run scoreboard players add V1 uid 1
execute unless score V1 uid = V2 uid run scoreboard objectives remove temuid
execute unless score V1 uid = V2 uid run scoreboard objectives add temuid dummy
execute unless score V1 uid = V2 uid run scoreboard players set temed uid 0
#----ifOnlineFiveMulti
execute unless score V1 uid = V2 uid run execute as @a run scoreboard players set online uid 0
execute unless score V1 uid = V2 uid run execute as @a run scoreboard players add online uid 1
execute unless score V1 uid = V2 uid run scoreboard players operation v1 cal = online uid
execute unless score V1 uid = V2 uid run scoreboard players operation v2 cal = v1 cal
execute unless score V1 uid = V2 uid run scoreboard players operation v1 cal /= five num
execute unless score V1 uid = V2 uid run scoreboard players operation v2 cal %= five num
execute unless score V1 uid = V2 uid run execute unless score v2 cal matches 0 run scoreboard players operation v1 cal += one num
#-end
#Spectatorwhenjoin
execute unless score V1 uid = V2 uid run team join spectator @a[tag=!gaming]
execute unless score V1 uid = V2 uid run gamemode spectator @a[team=spectator]
execute unless score V1 uid = V2 uid run effect give @a[team=spectator] night_vision 999999 0 true
execute unless score V1 uid = V2 uid run effect give @a[team=spectator] speed 999999 3 true
execute unless score V1 uid = V2 uid run tag @a add gaming
#-end
scoreboard players add @a temuid 0
execute as @r[scores={temuid=0}] run scoreboard players add temed uid 1
execute as @r[scores={temuid=0}] run scoreboard players operation @s temuid = temed uid
execute unless score V1 uid = V2 uid run execute as @a if score @s language = English language as @s if score @s menu = configidentity menu run function manhunt:tellraw/english/configidentity
execute unless score V1 uid = V2 uid run execute as @a if score @s language = Chinese language as @s if score @s menu = configidentity menu run function manhunt:tellraw/chinese/configidentity
execute unless score V1 uid = V2 uid run scoreboard players operation V2 uid = V1 uid
#start
execute if score start start matches 1 run function manhunt:repeat/duringgaming
execute as @a unless score @s manhunt matches 0 as @a run reload
execute as @a unless score @s manhunt matches 0 as @a run scoreboard players set @s manhunt 0
scoreboard players enable @a manhunt