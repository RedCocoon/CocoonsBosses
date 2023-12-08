summon minecraft:pillager ~ ~ ~ {Silent: 0b, NoAI:0b, \
Attributes:[{Name:"generic.max_health",Base:1024f}, {Name:"generic.movement_speed",Base:0d}], Health:1024f, \
active_effects:[{id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b}, \
{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],\
Tags:["ccbs.frostologer.ignore", "ccbs.tick", "ccbs.init", "ccbs.frostologer", "ccbs.can_hurt"], \
Passengers: [{ \
item: {id: "minecraft:iron_ingot", Count: 1b, tag: {CustomModelData: 1440700}}, shadow_radius:0.6f, item_display: "fixed", \
transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-2f,0f],scale:[1f,1f,1f]}, \
id: "minecraft:item_display"}], response: 1b, Fire: 0s, width: 0.85f, height: 2.1f}

execute as @e[distance=..0.5, tag=ccbs.init, sort=nearest, limit=1] at @s run function ccbs:entity/frostologer/init

playsound ccbs:block.ritual.frostologer_summon hostile @a ~ ~ ~