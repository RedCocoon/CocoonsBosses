execute on passengers run function ccbs:entity/generic/hurt/display

# Damage calculation
execute store result score @s ccbs.cal run data get entity @s Health 100
scoreboard players remove @s ccbs.cal 102400
scoreboard players operation @s ccbs.health += @s ccbs.cal

execute if entity @s[tag=ccbs.frostologer] run function ccbs:entity/frostologer/hurt

execute if score @s ccbs.health matches ..0 run function ccbs:entity/generic/die

data merge entity @s {Health:1024.0f}
execute unless entity @s[tag=ccbs.dead] run scoreboard players set @s ccbs.hit_cd 10