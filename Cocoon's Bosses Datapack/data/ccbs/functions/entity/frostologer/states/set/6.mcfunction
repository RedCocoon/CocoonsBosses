function ccbs:entity/frostologer/teleport

scoreboard players set @s ccbs.state 6
function ccbs:entity/frostologer/states/6/summon_strays
execute store result score @s ccbs.timer run random value 10..20 