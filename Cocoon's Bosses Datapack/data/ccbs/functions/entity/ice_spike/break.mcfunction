playsound minecraft:block.glass.break block @a ~ ~ ~
#tp @e[type=creeper,sort=nearest,limit=1,tag=ccbs.ice_spike.hitbox] ~ ~-999 ~
#execute positioned ~ ~1.6 ~ run tp @e[type=creeper,sort=nearest,limit=1,tag=ccbs.ice_spike.hitbox] ~ ~-999 ~
#execute positioned ~ ~3.2 ~ run tp @e[type=creeper,sort=nearest,limit=1,tag=ccbs.ice_spike.hitbox] ~ ~-999 ~

particle minecraft:block minecraft:packed_ice ~ ~ ~ 0 7 0 1 70 normal
particle minecraft:block minecraft:blue_ice ~ ~ ~ 0 7 0 1 70 normal

kill @s
