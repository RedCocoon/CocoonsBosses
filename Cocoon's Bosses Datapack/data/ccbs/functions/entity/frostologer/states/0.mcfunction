execute if score @s ccbs.timer matches 1.. run scoreboard players remove @s ccbs.timer 1
execute if score @s ccbs.timer matches 0 run function ccbs:entity/frostologer/states/finish/0
execute at @s run tp @s ~ ~ ~ facing entity @p

function ccbs:entity/generic/rotate/lock_pitch
function ccbs:entity/generic/rotate/rotate
