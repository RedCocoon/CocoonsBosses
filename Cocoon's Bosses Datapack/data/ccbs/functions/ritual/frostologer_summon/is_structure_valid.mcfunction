execute \
if block ~1 ~ ~ minecraft:snow_block \
if block ~-1 ~ ~ minecraft:snow_block \
if block ~ ~ ~1 minecraft:snow_block \
if block ~ ~ ~-1 minecraft:snow_block \
if block ~1 ~ ~1 minecraft:blue_ice \
if block ~1 ~ ~-1 minecraft:blue_ice \
if block ~-1 ~ ~1 minecraft:blue_ice \
if block ~-1 ~ ~-1 minecraft:blue_ice \
positioned ~ ~0.5 ~ \
if entity @e[type=minecraft:item,distance=..0.5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:totem_of_undying"}}] \
run return 1

return 0