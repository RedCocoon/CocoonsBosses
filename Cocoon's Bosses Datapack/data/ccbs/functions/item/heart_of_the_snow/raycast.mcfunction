execute store result score @s ccbs.cal if block ~ ~ ~ minecraft:emerald_block
execute if score @s ccbs.cal matches 1 if function ccbs:ritual/frostologer_summon/is_structure_valid run function ccbs:item/heart_of_the_snow/raycast_found
scoreboard players add @s ccbs.counter 1
execute if score @s ccbs.counter matches ..5 if score @s ccbs.cal matches 0 if block ~ ~ ~ #ccbs:no_collision positioned ^ ^ ^0.5 run function ccbs:item/heart_of_the_snow/raycast