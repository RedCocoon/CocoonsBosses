scoreboard players operation @s ccbs.cal *= 375 ccbs.cal
execute store result storage ccbs:cal temp.spike_location.distance_1 float 0.001 run scoreboard players get @s ccbs.cal
function ccbs:entity/frostologer/states/5/summon_spike_straight with storage ccbs:cal temp.spike_location

scoreboard players operation @s ccbs.cal *= -1 ccbs.cal
execute store result storage ccbs:cal temp.spike_location.distance_1 float 0.001 run scoreboard players get @s ccbs.cal
function ccbs:entity/frostologer/states/5/summon_spike_straight with storage ccbs:cal temp.spike_location