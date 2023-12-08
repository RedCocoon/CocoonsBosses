execute if score @s ccbs.timer matches 1.. run scoreboard players remove @s ccbs.timer 1
execute if score @s ccbs.timer matches 0 run function ccbs:entity/frostologer/states/finish/2

execute if score @s ccbs.timer2 matches 0.. run scoreboard players remove @s ccbs.timer2 1
execute if score @s ccbs.timer2 matches 0 run function ccbs:entity/frostologer/states/2/summon_vindicators

