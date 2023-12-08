tag @s remove ccbs.init
scoreboard players operation @s ccbs.health = frostologer.health_scaled ccbs.config
scoreboard players set @s ccbs.state 0
execute store result score @s ccbs.timer run random value 5..15
execute store result bossbar minecraft:ccbs.frostologer max run scoreboard players get @s ccbs.health

#summon marker ~ ~ ~ {Tags:["ccbs.cmarker", "ccbs.cmarker.frostologer"]}

data merge storage ccbs:cal {frostologer:{center:[0d,0d,0d], corner1:[0d, 0d], corner2:[0d, 0d]}}
execute store result storage ccbs:cal frostologer.center[0] double 1 run data get entity @s Pos[0]
execute store result storage ccbs:cal frostologer.center[1] double 1 run data get entity @s Pos[1]
execute store result storage ccbs:cal frostologer.center[2] double 1 run data get entity @s Pos[2]

execute store result score @s ccbs.cal run data get storage ccbs:cal frostologer.center[0] 100

scoreboard players operation @s ccbs.cal2 = @s ccbs.cal
scoreboard players add @s ccbs.cal2 1900
execute store result storage ccbs:cal frostologer.corner1[0] double 0.01 run scoreboard players get @s ccbs.cal2

scoreboard players operation @s ccbs.cal2 = @s ccbs.cal
scoreboard players remove @s ccbs.cal2 1900
execute store result storage ccbs:cal frostologer.corner2[0] double 0.01 run scoreboard players get @s ccbs.cal2

execute store result score @s ccbs.cal run data get storage ccbs:cal frostologer.center[2] 100

scoreboard players operation @s ccbs.cal2 = @s ccbs.cal
scoreboard players add @s ccbs.cal2 1900
execute store result storage ccbs:cal frostologer.corner1[1] double 0.01 run scoreboard players get @s ccbs.cal2

scoreboard players operation @s ccbs.cal2 = @s ccbs.cal
scoreboard players remove @s ccbs.cal2 1900
execute store result storage ccbs:cal frostologer.corner2[1] double 0.01 run scoreboard players get @s ccbs.cal2


function ccbs:block/barrier/summon

bossbar set minecraft:ccbs.frostologer players @e[distance=..50,type=minecraft:player]
