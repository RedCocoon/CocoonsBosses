function ccbs:entity/frostologer/teleport

scoreboard players set @s ccbs.state 3
scoreboard players set @s ccbs.counter 5
execute if function ccbs:entity/frostologer/return/is_phase_2 run scoreboard players set @s ccbs.counter 20

execute store result score @s ccbs.timer run random value 20..40
execute store result score @s ccbs.timer2 run random value 20..40 