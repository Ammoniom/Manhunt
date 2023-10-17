function manhunt:tellraw/general/clear
function manhunt:tellraw/english/manhunt
tellraw @s [{"text":"Language","bold":"true","color":"gray"},{"text":"[click to choose]","color":"#606060"}]
tellraw @s [{"text":"[Back]","bold":"true","color":"red","hoverEvent":{"action":"show_text","value":{"text":"Return to superior","color":"#FF847F"}},"clickEvent":{"action":"run_command","value":"/function manhunt:menu/language/back"}}]
tellraw @s [{"text":"-English(US)","bold":"true","color":"green","hoverEvent":{"action":"show_text","value":{"text":"You've already chosen English(US) as your language","color":"red"}}}]
tellraw @s [{"text":"-中文(大陆)","bold":"true","color":"white","hoverEvent":{"action":"show_text","value":{"text":"点击切换语言至 中文(大陆)","color":"green"}},"clickEvent":{"action":"run_command","value":"/function manhunt:menu/language/choosechinese"}}]
