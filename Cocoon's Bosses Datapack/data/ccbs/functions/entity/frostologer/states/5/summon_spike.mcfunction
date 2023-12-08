
scoreboard players operation @s ccbs.cal = @s ccbs.counter2
scoreboard players operation @s ccbs.cal -= @s ccbs.counter

execute store result storage ccbs:cal temp.spike_location.distance int 1 run scoreboard players get @s ccbs.cal

data modify storage ccbs:cal temp.spike_location.distance_1 set value 0f

function ccbs:entity/frostologer/states/5/summon_spike_straight with storage ccbs:cal temp.spike_location
execute if function ccbs:entity/frostologer/return/is_phase_2 run function ccbs:entity/frostologer/states/5/summon_spike_2
scoreboard players set @s ccbs.timer2 1
scoreboard players remove @s ccbs.counter 1