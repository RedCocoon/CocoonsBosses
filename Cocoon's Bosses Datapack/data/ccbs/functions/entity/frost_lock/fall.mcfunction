scoreboard players set @s ccbs.state 1
scoreboard players set @s ccbs.timer 10

data merge entity @s {start_interpolation: 0,interpolation_duration: 10, \
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-2f,0f],scale:[0f,0f,0f]}}

kill @e[distance=..0.5, sort=nearest, limit=1, tag=ccbs.freeze_point]
tp @e[distance=..0.5, sort=nearest, limit=1, tag=ccbs.frozen] ~ ~ ~
tag @e[distance=..0.5, sort=nearest, limit=1, tag=ccbs.frozen] remove ccbs.frozen