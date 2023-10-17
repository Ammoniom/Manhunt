function manhunt:tellraw/general/clear
function manhunt:tellraw/english/manhunt
gamemode spectator @a
title @a title {"text":"Hunters win","bold":"true","color":"dark_red"}
title @a subtitle {"selector":"@a[team=hunter]","bold":"true","color":"red"}
playsound ui.toast.challenge_complete master @a
tellraw @s [{"text":"Hunters win! ","bold":"true","color":"dark_red"},{"selector":"@a[team=hunter]","color":"red"}]
tellraw @s [{"text":"-Start another round","bold":"true","color":"white","hoverEvent":{"action":"show_text","value":{"text":"Click to start another round in this world\nBut I suggest to create another new world to start a new round","color":"dark_purple"}},"clickEvent":{"action":"run_command","value":"/function #minecraft:load"}}]