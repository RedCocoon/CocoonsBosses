function ccbs:entity/frostologer/teleport

scoreboard players set @s ccbs.state 0
execute if function ccbs:entity/frostologer/return/is_phase_2 run scoreboard players set @s ccbs.timer 0
execute unless function ccbs:entity/frostologer/return/is_phase_2 store result score @s ccbs.timer run random value 10..20