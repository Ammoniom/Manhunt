#English-language=0#Chinese-language=1
#main-menu=0#language-menu=1#settings-menu=2
playsound minecraft:ui.button.click master @s
execute as @s if score @s language = English language as @s if score @s menu = main menu run function manhunt:tellraw/english/main
execute as @s if score @s language = Chinese language as @s if score @s menu = main menu run function manhunt:tellraw/chinese/main
execute as @s if score @s language = English language as @s if score @s menu = language menu run function manhunt:tellraw/english/language
execute as @s if score @s language = Chinese language as @s if score @s menu = language menu run function manhunt:tellraw/chinese/language
execute as @s if score @s language = English language as @s if score @s menu = settings menu run function manhunt:tellraw/english/settings
execute as @s if score @s language = Chinese language as @s if score @s menu = settings menu run function manhunt:tellraw/chinese/settings
execute as @s if score @s language = English language as @s if score @s menu = identity menu run function manhunt:tellraw/english/identity
execute as @s if score @s language = Chinese language as @s if score @s menu = identity menu run function manhunt:tellraw/chinese/identity
execute as @s if score @s language = English language as @s if score @s menu = configidentity menu run function manhunt:tellraw/english/configidentity
execute as @s if score @s language = Chinese language as @s if score @s menu = configidentity menu run function manhunt:tellraw/chinese/configidentity
execute as @s if score @s language = English language as @s if score @s menu = start menu run function manhunt:tellraw/english/start
execute as @s if score @s language = Chinese language as @s if score @s menu = start menu run function manhunt:tellraw/chinese/start
execute as @s if score @s language = English language as @s if score @s menu = hunterwin menu run function manhunt:tellraw/english/hunterwin
execute as @s if score @s language = Chinese language as @s if score @s menu = hunterwin menu run function manhunt:tellraw/chinese/hunterwin
execute as @s if score @s language = English language as @s if score @s menu = runnerwin menu run function manhunt:tellraw/english/runnerwin
execute as @s if score @s language = Chinese language as @s if score @s menu = runnerwin menu run function manhunt:tellraw/chinese/runnerwin