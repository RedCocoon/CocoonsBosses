playsound minecraft:entity.splash_potion.throw hostile @a ~ ~ ~ 1 0.65

execute store result score @s ccbs.cal run random value 0..2

execute if score @s ccbs.cal matches 0 at @s run summon minecraft:potion ^ ^5 ^1 {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water",custom_potion_effects:[{id:"minecraft:slowness",amplifier:0,duration:400}]}}}
execute if score @s ccbs.cal matches 1 at @s run summon minecraft:potion ^ ^5 ^1 {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water",custom_potion_effects:[{id:"minecraft:slowness",amplifier:1,duration:200}]}}}
execute if score @s ccbs.cal matches 2 at @s run summon minecraft:potion ^ ^5 ^1 {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water",custom_potion_effects:[{id:"minecraft:slowness",amplifier:2,duration:100}]}}}

scoreboard players set @s ccbs.counter 1
execute store result score @s ccbs.timer2 run random value 10..20
execute if function ccbs:entity/frostologer/return/is_phase_2 store result score @s ccbs.timer2 run random value 2..6