execute if score @s ccbs.timer matches 1.. run scoreboard players remove @s ccbs.timer 1
execute if score @s ccbs.timer matches 0 run function ccbs:entity/ice_spike/change_state

scoreboard players set @s ccbs.cal 0
execute positioned ~-0.5 ~ ~-0.5 store success score @s ccbs.cal run \
damage @e[dx=0,dz=0,dy=7,tag=!ccbs.frostologer.ignore,type=!#ccbs:ignore_attacks,sort=nearest,limit=1] 5 minecraft:trident by @s

execute positioned ~-0.5 ~ ~-0.5 \
if entity @e[dx=0,dz=0,dy=7,type=#ccbs:break_ice_spikes,sort=nearest,limit=1] run function ccbs:entity/ice_spike/break

execute if score @s ccbs.cal matches 1 run function ccbs:entity/ice_spike/break

function ccbs:entity/ice_spike/break_block
execute positioned ~ ~1 ~ run function ccbs:entity/ice_spike/break_block
execute positioned ~ ~2 ~ run function ccbs:entity/ice_spike/break_block
execute positioned ~ ~3 ~ run function ccbs:entity/ice_spike/break_block
execute positioned ~ ~4 ~ run function ccbs:entity/ice_spike/break_block
execute positioned ~ ~5 ~ run function ccbs:entity/ice_spike/break_block
execute positioned ~ ~6 ~ run function ccbs:entity/ice_spike/break_block
execute positioned ~ ~7 ~ run function ccbs:entity/ice_spike/break_block