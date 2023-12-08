execute unless score @s ccbs.hit_cd matches 1.. unless data entity @s {Health:1024.0f} run function ccbs:entity/generic/hurt/hurt

execute if score @s ccbs.hit_cd matches 0.. run scoreboard players remove @s ccbs.hit_cd 1
execute if score @s ccbs.hit_cd matches 0 on passengers run function ccbs:entity/generic/hurt/undisplay