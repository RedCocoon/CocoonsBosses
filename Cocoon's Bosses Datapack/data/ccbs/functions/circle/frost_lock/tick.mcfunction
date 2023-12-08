execute if entity @s[tag=ccbs.new] run function ccbs:circle/frost_lock/post_init
scoreboard players remove @s ccbs.timer 1

execute if score @s ccbs.timer matches 10 positioned ~ ~-0.5 ~ run function ccbs:entity/frost_lock/summon
execute if score @s ccbs.timer matches ..0 run function ccbs:circle/frost_lock/despawn
