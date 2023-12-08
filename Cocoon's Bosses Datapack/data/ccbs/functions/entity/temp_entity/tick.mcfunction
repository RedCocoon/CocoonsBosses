execute if score @s ccbs.timer matches 1.. run scoreboard players remove @s ccbs.timer 1
execute if score @s ccbs.timer matches 0 run function ccbs:entity/temp_entity/despawn

# execute if score @s ccbs.timer matches 0 run say hi
# say hi