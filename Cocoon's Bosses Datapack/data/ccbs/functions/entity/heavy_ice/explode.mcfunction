playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.1 0.9
playsound ccbs:entity.heavy_ice.hit hostile @a ~ ~ ~ 1 1
damage @e[distance=..5,type=!#ccbs:ignore_attacks,sort=nearest,limit=1] 10 minecraft:explosion by @s
function ccbs:entity/heavy_ice/break
