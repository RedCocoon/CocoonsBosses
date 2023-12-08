execute if score @s ccbs.state matches 0 run function ccbs:entity/ice_spike/rise
execute if score @s ccbs.state matches 1 if score @s ccbs.timer matches ..0 run function ccbs:entity/ice_spike/fall
execute if score @s ccbs.state matches 2 if score @s ccbs.timer matches ..0 run kill @s