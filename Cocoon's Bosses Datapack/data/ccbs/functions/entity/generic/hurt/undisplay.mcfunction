execute store result score @s ccbs.cal run data get entity @s item.tag.CustomModelData
scoreboard players remove @s ccbs.cal 1
execute store result entity @s item.tag.CustomModelData int 1 run scoreboard players get @s ccbs.cal