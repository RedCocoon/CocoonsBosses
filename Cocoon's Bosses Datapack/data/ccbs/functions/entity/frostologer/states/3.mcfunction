execute if score @s ccbs.counter matches ..0 run scoreboard players remove @s ccbs.timer 1

execute if score @s ccbs.timer matches 0 run function ccbs:entity/frostologer/states/finish/3

execute if score @s ccbs.timer2 matches 1.. run scoreboard players remove @s ccbs.timer2 1

execute if score @s ccbs.timer2 matches 0 if score @s ccbs.counter matches 1.. run function ccbs:entity/frostologer/states/3/summon_frost_lock