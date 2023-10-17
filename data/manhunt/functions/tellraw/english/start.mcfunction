execute as @a run function manhunt:tellraw/general/clear with entity @s
execute as @a run function manhunt:tellraw/english/manhunt with entity @s
tellraw @a {"text":"The game starts!","bold":"true"}
tellraw @a [{"text":"Hunter(s): ","bold":"true","color":"#A10300","hoverEvent":{"action":"show_text","value":{"text":"Who will try to hunt down runner(s)","color":"dark_purple"}}},{"text":"- ","color":"gray"},{"selector":"@a[team=hunter]","color":"red"}]
tellraw @a [{"text":"Runner(s): ","bold":"true","color":"#469F43","hoverEvent":{"action":"show_text","value":{"text":"Who will try to acheive the goal to win without dying","color":"dark_purple"}}},{"text":"- ","color":"gray"},{"selector":"@a[team=runner]","color":"#55D14C"}]
execute if entity @r[team=spectator] run tellraw @a [{"text":"Spectator(s): ","bold":"true","color":"#956D19","hoverEvent":{"action":"show_text","value":{"text":"Who will become spectators when the game begins","color":"dark_purple"}}},{"text":"- ","color":"gray"},{"selector":"@a[team=spectator]","color":"#AA924E"}]
execute unless entity @r[team=spectator] run tellraw @a [{"text":"Spectator(s): ","bold":"true","color":"#956D19","hoverEvent":{"action":"show_text","value":{"text":"Who will become spectators when the game begins","color":"dark_purple"}}},{"text":"- ","color":"gray"},{"text":"None","color":"#AA924E"}]
execute if score winCondition settings matches 0 run tellraw @a [{"text":"Runners' goal: ","bold":"true","color":"#D58400"},{"text":"Kill the ender dragon","color":"#FEC700"}]
execute if score winCondition settings matches 1 run tellraw @a [{"text":"Runners' goal: ","bold":"true","color":"#D58400"},{"text":"Kill All Hunters","color":"#FEC700"}]
execute if score winCondition settings matches 2 run tellraw @a [{"text":"Runners' goal: ","bold":"true","color":"#D58400"},{"text":"Get a diamond","color":"#FEC700"}]
execute if score winCondition settings matches 3 run tellraw @a [{"text":"Runners' goal: ","bold":"true","color":"#D58400"},{"text":"Get a netherite ingot","color":"#FEC700"}]
tellraw @a [{"text":"Tip: ","color":"#0061FF"},{"text":"Hunters will get a compass which always points at a runner","color":"blue"}]
tellraw @a [{"text":"Tip: ","color":"#0061FF"},{"text":"From now on, any players join the game will become a spectator","color":"blue"}]
tag @a add gaming