data merge entity @s {CustomName:'{"text":"Frost Lock"}',\
Tags:["ccbs.tick", "ccbs.frost_lock", "ccbs.new"], \
item:{id:"gold_ingot",Count:1b,tag:{CustomModelData:1440702}}, \
brightness:{sky:15,block:15},item_display:"fixed",interpolation_duration: 10, \
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}

execute store result entity @s Rotation[0] float 1 run random value -180..180

scoreboard players set @s ccbs.state 0
scoreboard players set @s ccbs.timer 100

summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Small:1b,Tags:["ccbs.freeze_point"]}

execute as @e[distance=..1,tag=!ccbs.frostologer.ignore,type=!#ccbs:ignore_attacks,limit=1] run function ccbs:entity/frost_lock/freeze