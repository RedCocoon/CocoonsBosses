execute if score @s ccbs.counter matches 0 positioned ~ ~5 ~ run function ccbs:entity/heavy_ice/summon
execute if score @s ccbs.counter matches 1 positioned ~ ~5 ~ run function ccbs:entity/heavy_ice/summon
execute if score @s ccbs.counter matches 2 positioned ~ ~5 ~ run function ccbs:entity/heavy_ice/summon

execute positioned ~ ~4 ~ if function ccbs:entity/frostologer/return/is_phase_2 run function ccbs:entity/heavy_ice/summon

execute unless score @s ccbs.counter matches 3 run playsound ccbs:entity.heavy_ice.cast block @a ~ ~ ~ 1 1

execute if score @s ccbs.counter matches 3 run function ccbs:entity/frostologer/states/finish/1

scoreboard players add @s ccbs.counter 1
scoreboard players set @s ccbs.timer 20
execute if score @s ccbs.counter matches 3 run scoreboard players set @s ccbs.timer 40
