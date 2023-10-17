function manhunt:tellraw/general/clear
function manhunt:tellraw/chinese/manhunt
tellraw @s [{"text":"语言","bold":"true","color":"gray"},{"text":"[点击选择]","color":"#606060"}]
tellraw @s [{"text":"[返回]","bold":"true","color":"red","hoverEvent":{"action":"show_text","value":{"text":"返回上级","color":"#FF847F"}},"clickEvent":{"action":"run_command","value":"/function manhunt:menu/language/back"}}]
tellraw @s [{"text":"-English(US)","bold":"true","color":"white","hoverEvent":{"action":"show_text","value":{"text":"Click to change system language to English(US)","color":"green"}},"clickEvent":{"action":"run_command","value":"/function manhunt:menu/language/chooseenglish"}}]
tellraw @s [{"text":"-中文(大陆)","bold":"true","color":"green","hoverEvent":{"action":"show_text","value":{"text":"您已将中文(大陆)选为系统语言","color":"red"}}}]
