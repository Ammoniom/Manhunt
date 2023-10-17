execute as @a run function manhunt:tellraw/general/clear with entity @s
execute as @a run function manhunt:tellraw/chinese/manhunt with entity @s
tellraw @a {"text":"游戏开始！","bold":"true"}
tellraw @a [{"text":"追杀者: ","bold":"true","color":"#A10300","hoverEvent":{"action":"show_text","value":{"text":"这些人将会追杀逃生者","color":"dark_purple"}}},{"text":"- ","color":"gray"},{"selector":"@a[team=hunter]","color":"red"}]
tellraw @a [{"text":"逃生者: ","bold":"true","color":"#469F43","hoverEvent":{"action":"show_text","value":{"text":"这些人将会尝试在不死亡的情况下完成目标","color":"dark_purple"}}},{"text":"- ","color":"gray"},{"selector":"@a[team=runner]","color":"#55D14C"}]
execute if entity @r[team=spectator] run tellraw @a [{"text":"旁观者: ","bold":"true","color":"#956D19","hoverEvent":{"action":"show_text","value":{"text":"这些人将会在游戏开始时变为旁观者","color":"dark_purple"}}},{"text":"- ","color":"gray"},{"selector":"@a[team=spectator]","color":"#AA924E"}]
execute unless entity @r[team=spectator] run tellraw @a [{"text":"Spectator(s): ","bold":"true","color":"#956D19","hoverEvent":{"action":"show_text","value":{"text":"这些人将会在游戏开始时变为旁观者","color":"dark_purple"}}},{"text":"- ","color":"gray"},{"text":"无","color":"#AA924E"}]
execute if score winCondition settings matches 0 run tellraw @a [{"text":"Runners' goal: ","bold":"true","color":"#D58400"},{"text":"击杀末影龙","color":"#FEC700"}]
execute if score winCondition settings matches 1 run tellraw @a [{"text":"Runners' goal: ","bold":"true","color":"#D58400"},{"text":"击杀所有追杀者","color":"#FEC700"}]
execute if score winCondition settings matches 2 run tellraw @a [{"text":"Runners' goal: ","bold":"true","color":"#D58400"},{"text":"获得一颗钻石","color":"#FEC700"}]
execute if score winCondition settings matches 3 run tellraw @a [{"text":"Runners' goal: ","bold":"true","color":"#D58400"},{"text":"获得一个下界合金锭","color":"#FEC700"}]
tellraw @a [{"text":"提示: ","color":"#0061FF"},{"text":"追杀者们将会获得到一个一直指向一个逃生者的指南针","color":"blue"}]
tellraw @a [{"text":"提示: ","color":"#0061FF"},{"text":"从现在开始，任何再加入的玩家将会变成旁观者","color":"blue"}]
tag @a add gaming