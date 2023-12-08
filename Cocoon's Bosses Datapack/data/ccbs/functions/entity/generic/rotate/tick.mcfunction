# execute store result score @s ccbs.cal run data get entity @s Rotation[0] 1000
# execute store result score @s ccbs.cal2 on passengers run data get entity @s Rotation[0] 1000

# scoreboard players operation @s ccbs.cal3 = @s ccbs.cal
# scoreboard players operation @s ccbs.cal3 -= @s ccbs.cal2

# execute if score @s ccbs.cal3 matches ..0 run scoreboard players operation @s ccbs.cal3 *= -1 ccbs.cal

# execute if score @s ccbs.cal > @s ccbs.cal2 if score @s ccbs.cal3 matches ..180000 run function ccbs:entity/generic/rotate/rotate_cw
# execute if score @s ccbs.cal > @s ccbs.cal2 if score @s ccbs.cal3 matches 180000.. run function ccbs:entity/generic/rotate/rotate_ccw
# execute if score @s ccbs.cal < @s ccbs.cal2 if score @s ccbs.cal3 matches 180000.. run function ccbs:entity/generic/rotate/rotate_cw
# execute if score @s ccbs.cal < @s ccbs.cal2 if score @s ccbs.cal3 matches ..180000 run function ccbs:entity/generic/rotate/rotate_ccw

# execute store result storage ccbs:cal Rotation float 0.001 run scoreboard players get @s ccbs.cal2

# execute on passengers run data modify entity @s Rotation[0] set from storage ccbs:cal Rotation

## Scrap all these fancy nonsense, just have the rotation be janky

# execute store result storage ccbs:cal Rotation float 1 run data get entity @s Rotation[0]
# execute on passengers run data modify entity @s Rotation[0] set from storage ccbs:cal
# execute on passengers store result entity @s Rotation[0] float 1 run data get storage ccbs:cal Rotation 1