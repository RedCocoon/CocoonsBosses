# State 0: Drift left
# State 1: Drift right
# State 2: fire in a straight line
execute if score @s ccbs.state matches 0 run function ccbs:entity/heavy_ice/0
execute if score @s ccbs.state matches 1 run function ccbs:entity/heavy_ice/1
execute if score @s ccbs.state matches 2 run tp @s ^ ^ ^1