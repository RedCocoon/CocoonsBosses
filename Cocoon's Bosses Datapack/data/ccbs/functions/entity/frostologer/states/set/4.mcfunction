function ccbs:entity/frostologer/teleport_near_player {max: 3, min: 0}

scoreboard players set @s ccbs.state 4
scoreboard players set @s ccbs.counter 0
scoreboard players set @s ccbs.timer -1

execute store result score @s ccbs.timer2 run random value 5..10
execute if function ccbs:entity/frostologer/return/is_phase_2 store result score @s ccbs.timer2 run random value 2..6
