execute if score @s ccbs.counter matches -10.. run scoreboard players remove @s ccbs.counter 1
execute unless score @s ccbs.counter matches -10.. run scoreboard players set @s ccbs.state 1
execute if predicate ccbs:random_10 run scoreboard players set @s ccbs.state 1



execute store result storage ccbs:cal temp.heavy_ice.distance float 0.01 run scoreboard players get @s ccbs.counter

function ccbs:entity/heavy_ice/tp with storage ccbs:cal temp.heavy_ice