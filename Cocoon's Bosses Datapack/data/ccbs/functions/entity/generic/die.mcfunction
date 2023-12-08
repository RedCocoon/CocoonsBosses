tag @s add ccbs.dead
scoreboard players set @s ccbs.hit_cd 30

execute on passengers run data merge entity @s {interpolation_duration: 10, start_interpolation: 0, transformation:{left_rotation:{angle:-1.570795f,axis:[0,0,1]},right_rotation:[0f,0f,0f,1f],translation:[0f,-2.0f,0f],scale:[1f,1f,1f]}}

execute if entity @s[tag=ccbs.frostologer] run function ccbs:entity/frostologer/die

