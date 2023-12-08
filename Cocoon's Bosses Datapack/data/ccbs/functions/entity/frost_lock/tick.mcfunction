execute if entity @s[tag=ccbs.new] run function ccbs:entity/frost_lock/post_init

execute if score @s ccbs.timer matches 1.. run scoreboard players remove @s ccbs.timer 1
execute if score @s ccbs.timer matches 0 run function ccbs:entity/frost_lock/change_state

execute if score @s ccbs.state matches 0 unless entity @e[distance=..0.5, sort=nearest, limit=1, tag=ccbs.frozen] run function ccbs:entity/frost_lock/fall

ride @e[distance=..0.5, sort=nearest, limit=1, tag=ccbs.frozen] mount @e[distance=..0.5, sort=nearest, limit=1, tag=ccbs.freeze_point]