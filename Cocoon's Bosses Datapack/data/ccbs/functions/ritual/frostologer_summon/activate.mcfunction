fill ~1 ~ ~1 ~-1 ~ ~-1 minecraft:air
execute positioned ~ ~0.5 ~ run kill @e[type=minecraft:item,distance=..0.5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:totem_of_undying"}}]
execute positioned ~ ~-0.5 ~ run function ccbs:entity/frostologer/summon