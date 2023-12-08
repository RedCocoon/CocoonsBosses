execute if entity @s[tag=ccbs.frostologer] run function ccbs:entity/frostologer/tick
execute if entity @s[tag=ccbs.temp_entity] run function ccbs:entity/temp_entity/tick


execute if entity @s[tag=ccbs.ice_spike] run function ccbs:entity/ice_spike/tick
execute if entity @s[tag=ccbs.ice_spike.circle] run function ccbs:circle/ice_spike/tick

execute if entity @s[tag=ccbs.heavy_ice] unless entity @s[tag=ccbs.dead] run function ccbs:entity/heavy_ice/tick_move
execute if entity @s[tag=ccbs.heavy_ice] unless entity @s[tag=ccbs.dead] at @s positioned ~ ~0.5 ~ run function ccbs:entity/heavy_ice/tick

execute if entity @s[tag=ccbs.heavy_ice, tag=ccbs.dead] run function ccbs:entity/heavy_ice/dead
execute if entity @s[tag=ccbs.heavy_ice.circle] run function ccbs:circle/heavy_ice/tick

execute if entity @s[tag=ccbs.frost_lock] run function ccbs:entity/frost_lock/tick
execute if entity @s[tag=ccbs.frost_lock.circle] run function ccbs:circle/frost_lock/tick


execute if entity @s[tag=ccbs.can_hurt] run function ccbs:entity/generic/hurt/tick
execute if entity @s[tag=ccbs.dead] run function ccbs:entity/generic/tick_dead


execute if entity @s[tag=ccbs.frostologer_barrier, tag=ccbs.new] run function ccbs:block/barrier/post_init