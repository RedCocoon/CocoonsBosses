execute store result bossbar minecraft:ccbs.frostologer value run scoreboard players get @s ccbs.health

# States
# 0 = Idle -> 123456
# 1 = Casting 3 Homing Icicles -> 0
# 2 = Casting Summon Vindicators -> 0
# 3 = Casting Frost Spell -> 0
# 4 = Casting Slow Spell -> 0
# 5 = Casting Icicle Ground Spike -> 0
# 6 = Casting Summon Strays -> 0
# -1 = Died

execute if score @s ccbs.state matches 0 run function ccbs:entity/frostologer/states/0
execute if score @s ccbs.state matches 1 run function ccbs:entity/frostologer/states/1
execute if score @s ccbs.state matches 2 run function ccbs:entity/frostologer/states/2
execute if score @s ccbs.state matches 3 run function ccbs:entity/frostologer/states/3
execute if score @s ccbs.state matches 4 run function ccbs:entity/frostologer/states/4
execute if score @s ccbs.state matches 5 run function ccbs:entity/frostologer/states/5
execute if score @s ccbs.state matches 6 run function ccbs:entity/frostologer/states/6

## common behavior
# If suffocating, create an ice spike
function ccbs:entity/frostologer/excavate
execute positioned ~1 ~ ~ run function ccbs:entity/frostologer/excavate
execute positioned ~-1 ~ ~ run function ccbs:entity/frostologer/excavate
execute positioned ~1 ~ ~-1 run function ccbs:entity/frostologer/excavate
execute positioned ~-1 ~ ~1 run function ccbs:entity/frostologer/excavate
execute positioned ~ ~ ~1 run function ccbs:entity/frostologer/excavate
execute positioned ~ ~ ~-1 run function ccbs:entity/frostologer/excavate
execute positioned ~1 ~ ~1 run function ccbs:entity/frostologer/excavate
execute positioned ~-1 ~ ~-1 run function ccbs:entity/frostologer/excavate

# execute if function ccbs:entity/frostologer/return/is_phase_2 run say hi