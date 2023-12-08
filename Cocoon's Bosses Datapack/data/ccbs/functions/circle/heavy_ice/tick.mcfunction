execute if entity @s[tag=ccbs.new] run function ccbs:circle/heavy_ice/post_init
scoreboard players remove @s ccbs.timer 1

#execute if score @s ccbs.timer matches 20 run function ccbs:entity/heavy_ice/summon
execute if score @s ccbs.timer matches ..0 run function ccbs:circle/heavy_ice/despawn