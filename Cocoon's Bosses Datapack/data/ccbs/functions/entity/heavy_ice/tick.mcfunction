particle minecraft:snowflake ~ ~ ~ 0 0 0 0.1 2
#particle minecraft:happy_villager ~ ~ ~ 0 0 0 0.1 2

execute unless score @s ccbs.state matches 2 positioned ~-0.5 ~-0.5 ~-0.5 store success score @s ccbs.cal run \
damage @e[dx=0.25,dz=0.25,dy=0.25,tag=!ccbs.frostologer.ignore,tag=!ccbs.heavy_ice.ignore,type=!#ccbs:ignore_attacks,sort=nearest,limit=1] 10 minecraft:explosion by @s

execute if score @s ccbs.state matches 2 positioned ~-0.5 ~-0.5 ~-0.5 store success score @s ccbs.cal run \
damage @e[dx=0.25,dz=0.25,dy=0.25,tag=!ccbs.heavy_ice.ignore,type=!#ccbs:ignore_attacks,sort=nearest,limit=1] 20 minecraft:explosion by @s


execute if entity @e[distance=..1.5,type=#ccbs:break_ice_spikes,sort=nearest,limit=1] run function ccbs:entity/heavy_ice/projectile_hit

execute if score @s ccbs.cal matches 1 run function ccbs:entity/heavy_ice/explode

scoreboard players remove @s ccbs.timer 1
execute if score @s ccbs.timer matches ..0 run function ccbs:entity/heavy_ice/despawn

execute unless block ~ ~-0.5 ~ #ccbs:no_collision run function ccbs:entity/heavy_ice/explode

#execute on attacker run tag @s add ccbs.attacker
execute unless score @s ccbs.state matches 2 unless data entity @s {Health:1024.0f} run function ccbs:entity/heavy_ice/hit
