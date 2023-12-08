function ccbs:entity/generic/rotate/lock_pitch


execute if score @s ccbs.counter matches ..0 run scoreboard players remove @s ccbs.timer 1

execute if score @s ccbs.timer matches 0 run function ccbs:entity/frostologer/states/finish/5
execute if score @s ccbs.timer2 matches 0.. run scoreboard players remove @s ccbs.timer2 1

execute if score @s ccbs.timer2 matches 0 if score @s ccbs.counter matches 1.. as @s at @s run function ccbs:entity/frostologer/states/5/summon_spike