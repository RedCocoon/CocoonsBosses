function ccbs:entity/frostologer/teleport_near_player {max: 10, min: 5}

scoreboard players set @s ccbs.state 5
scoreboard players set @s ccbs.timer 40

scoreboard players set @s ccbs.timer2 10

scoreboard players set @s ccbs.counter 13
execute if function ccbs:entity/frostologer/return/is_phase_2 run scoreboard players set @s ccbs.counter 20
scoreboard players operation @s ccbs.counter2 = @s ccbs.counter