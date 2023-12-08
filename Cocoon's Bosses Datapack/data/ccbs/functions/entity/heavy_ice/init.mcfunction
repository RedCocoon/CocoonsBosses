data merge entity @s {\
CustomName:'{"text":"Heavy Ice"}',\
Health:1024.0f, Size:1b,\
Tags:["ccbs.frostologer.ignore", "ccbs.heavy_ice.ignore", "ccbs.heavy_ice", "ccbs.tick"], \
NoAI:1b, Silent:1b, NoGravity:1b,\
active_effects:[{id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b}, \
{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],\
Attributes:[{Name:"generic.max_health",Base:1024f}, {Name:"generic.movement_speed",Base:0d}, {Name:"generic.attack_knockback",Base:0d}]}

execute store result entity @s Rotation[0] float 1 run random value -180..180

scoreboard players set @s ccbs.state 0
scoreboard players set @s ccbs.counter 10
scoreboard players set @s ccbs.timer 200

summon minecraft:item_display ~ ~ ~ {\
Tags:["ccbs.tick", "ccbs.heavy_ice.display", "ccbs.frostologer.ignore"], \
item:{id:"gold_ingot",Count:1b,tag:{CustomModelData:1440701}}, \
brightness:{sky:15,block:15},item_display:"fixed",interpolation_duration: 10, \
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
ride @e[type=minecraft:item_display,limit=1,sort=nearest,tag=ccbs.heavy_ice.display] mount @s

#execute summon minecraft:interaction run function ccbs:entity/heavy_ice/hitbox/init