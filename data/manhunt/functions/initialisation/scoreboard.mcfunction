scoreboard objectives remove settings
scoreboard objectives add settings dummy
scoreboard players set true settings 1
scoreboard players set false settings 0
scoreboard players set keepInventory settings 0
scoreboard players set fallDamage settings 1
scoreboard players set fireDamage settings 1
scoreboard players set gammaOverride settings 0
scoreboard players set announceAdvancements settings 1
scoreboard players set doDaylightCycle settings 1
scoreboard players set doWeatherCycle settings 1
scoreboard players set mobGriefing settings 1
scoreboard players set spectatorsGenerateChunks settings 0
scoreboard players set timeForRespawn settings 0
scoreboard players set winCondition settings 0
scoreboard players set interAllyFire settings 1
scoreboard players set healthDisplay settings 0
#-----------------------------------------------------------------------
scoreboard objectives remove menu
scoreboard objectives add menu dummy
scoreboard players set @a menu 0
scoreboard players set main menu 0
scoreboard players set language menu 1
scoreboard players set settings menu 2
scoreboard players set start menu 3
scoreboard players set identity menu 4
scoreboard players set configidentity menu 5
scoreboard players set hunterwin menu 6
scoreboard players set runnerwin menu 7
#-----------------------------------------------------------------------
scoreboard objectives remove language
scoreboard objectives add language dummy
scoreboard players set @a language 0
scoreboard players set English language 0
scoreboard players set Chinese language 1
#-----------------------------------------------------------------------
scoreboard objectives remove start
scoreboard objectives add start dummy
scoreboard players set tick start 0
scoreboard players set second start 0
scoreboard players set start start 0
#-----------------------------------------------------------------------
scoreboard objectives remove num
scoreboard objectives add num dummy
scoreboard players set negativeone num -1
scoreboard players set zero num 0
scoreboard players set one num 1
scoreboard players set two num 2
scoreboard players set three num 3
scoreboard players set four num 4
scoreboard players set five num 5
scoreboard players set six num 6
scoreboard players set seven num 7
scoreboard players set eight num 8
scoreboard players set nine num 9
scoreboard players set ten num 10
scoreboard players set twoten num 20
#-----------------------------------------------------------------------
scoreboard objectives remove uid
scoreboard objectives add uid dummy
scoreboard players set players uid 0
scoreboard players set V1 uid 0
scoreboard players set V2 uid 0
scoreboard players set temed uid 0
#----------------------------Display------------------------------------
#---------ups-uidPlayerSelected-----------
#current
scoreboard objectives remove ups0
scoreboard objectives add ups0 dummy
#+1
scoreboard objectives remove ups1
scoreboard objectives add ups1 dummy
#+2
scoreboard objectives remove ups2
scoreboard objectives add ups2 dummy
#+3
scoreboard objectives remove ups3
scoreboard objectives add ups3 dummy
#+4
scoreboard objectives remove ups4
scoreboard objectives add ups4 dummy
#------------ps-pageSelected--------------
scoreboard objectives remove ps
scoreboard objectives add ps dummy
scoreboard objectives remove psincrement
scoreboard objectives add psincrement dummy
#---------------------------cal-calculate-------------------------------
scoreboard objectives remove cal
scoreboard objectives add cal dummy
scoreboard players set v1 cal 0
scoreboard players set v2 cal 0
scoreboard players set v3 cal 0
#-----------------------------------------------------------------------
scoreboard objectives remove show
scoreboard objectives add show dummy
#-----------------------------------------------------------------------
scoreboard objectives remove health
scoreboard objectives add health health {"text":"\u2764","color":"#FF0800"}
scoreboard objectives modify health rendertype hearts
#-----------------------------------------------------------------------
scoreboard objectives remove death
scoreboard objectives add death deathCount
scoreboard objectives remove timeforrespawn
scoreboard objectives add timeforrespawn dummy
#-----------------------------------------------------------------------
scoreboard objectives remove detect
scoreboard objectives add detect dummy
scoreboard players set diamond detect 0
scoreboard players set netherite detect 0
#-----------------------------------------------------------------------
scoreboard objectives remove manhunt
scoreboard objectives add manhunt trigger
scoreboard players set @a manhunt 0
#-----------------------------------------------------------------------
tag @a remove gaming
tag @a remove dead
tag @a remove pointed