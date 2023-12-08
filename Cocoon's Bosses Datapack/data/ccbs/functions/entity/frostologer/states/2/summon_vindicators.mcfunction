execute positioned ~1 ~ ~ run function ccbs:entity/temp_entity/vindicator/summon
execute positioned ~ ~ ~1 run function ccbs:entity/temp_entity/vindicator/summon
execute positioned ~1 ~ ~1 run function ccbs:entity/temp_entity/vindicator/summon

execute if function ccbs:entity/frostologer/return/is_phase_2 run function ccbs:entity/frostologer/states/2/summon_vindicators_2

playsound ccbs:entity.frostologer.cast_summon hostile @a ~ ~ ~ 1 1

execute store result score @s ccbs.timer run random value 20..40