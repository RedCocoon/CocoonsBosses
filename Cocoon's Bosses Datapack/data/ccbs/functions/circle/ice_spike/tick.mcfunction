execute if entity @s[tag=ccbs.new] run function ccbs:circle/ice_spike/post_init
scoreboard players remove @s ccbs.timer 1

execute if score @s ccbs.timer matches 5 run function ccbs:entity/ice_spike/summon
execute if score @s ccbs.timer matches ..0 run function ccbs:circle/ice_spike/despawn