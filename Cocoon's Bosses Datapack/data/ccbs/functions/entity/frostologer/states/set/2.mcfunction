function ccbs:entity/frostologer/teleport_near_player {max: 5, min: 2}

scoreboard players set @s ccbs.state 2

scoreboard players set @s ccbs.timer -1
execute store result score @s ccbs.timer2 run random value 10..20 