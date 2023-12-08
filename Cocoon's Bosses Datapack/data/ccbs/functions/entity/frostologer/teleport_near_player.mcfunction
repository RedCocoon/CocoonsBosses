# Apply random, and limit it to the boundary
# Corner 1: Positive Upper Bound
# Corner 2: Negative Lower Bound

execute store result score @s ccbs.cal run data get entity @p Pos[0] 10000
$execute store result score @s ccbs.cal2 run random value $(min)0000..$(max)0000
execute if predicate ccbs:random_50 run scoreboard players operation @s ccbs.cal2 *= -1 ccbs.cal
scoreboard players operation @s ccbs.cal += @s ccbs.cal2

# Get upper and lower bound
execute store result score @s ccbs.cal2 run data get storage ccbs:cal frostologer.corner1[0] 10000
execute store result score @s ccbs.cal3 run data get storage ccbs:cal frostologer.corner2[0] 10000

# If higher than upper bound, set to upperbound
execute if score @s ccbs.cal > @s ccbs.cal2 run scoreboard players operation @s ccbs.cal = @s ccbs.cal2
# If it is lower than lower bound, set to lowerbound
execute if score @s ccbs.cal < @s ccbs.cal3 run scoreboard players operation @s ccbs.cal = @s ccbs.cal3


execute store result entity @s Pos[0] double 0.0001 run scoreboard players get @s ccbs.cal

execute store result score @s ccbs.cal run data get entity @p Pos[2] 10000
$execute store result score @s ccbs.cal2 run random value $(min)0000..$(max)0000
execute if predicate ccbs:random_50 run scoreboard players operation @s ccbs.cal2 *= -1 ccbs.cal
scoreboard players operation @s ccbs.cal += @s ccbs.cal2

# Get upper and lower bound
execute store result score @s ccbs.cal2 run data get storage ccbs:cal frostologer.corner1[1] 10000
execute store result score @s ccbs.cal3 run data get storage ccbs:cal frostologer.corner2[1] 10000

# If higher than upper bound, set to upperbound
execute if score @s ccbs.cal > @s ccbs.cal2 run scoreboard players operation @s ccbs.cal = @s ccbs.cal2
# If it is lower than lower bound, set to lowerbound
execute if score @s ccbs.cal < @s ccbs.cal3 run scoreboard players operation @s ccbs.cal = @s ccbs.cal3

execute store result entity @s Pos[2] double 0.0001 run scoreboard players get @s ccbs.cal

# summon armor_stand ~ ~ ~ {NoGravity:1b}
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 0.75
execute at @s run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0.01 5
