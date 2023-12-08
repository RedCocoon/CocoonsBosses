data merge entity @s {CustomName:'{"text":"Ice Spike"}',\
Tags:["ccbs.tick", "ccbs.ice_spike"], \
item:{id:"gold_ingot",Count:1b,tag:{CustomModelData:1440700}}, \
brightness:{sky:15,block:15},item_display:"fixed",interpolation_duration: 10, \
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-7f,0f],scale:[1f,1f,1f]}}

execute store result entity @s Rotation[0] float 1 run random value -180..180

scoreboard players set @s ccbs.state 0
scoreboard players set @s ccbs.timer 2