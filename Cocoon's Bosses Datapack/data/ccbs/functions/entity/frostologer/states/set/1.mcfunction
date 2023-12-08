function ccbs:entity/frostologer/teleport

scoreboard players set @s ccbs.state 1
scoreboard players set @s ccbs.counter 0
execute store result score @s ccbs.timer run random value 40 

execute at @s run function ccbs:circle/heavy_ice/summon