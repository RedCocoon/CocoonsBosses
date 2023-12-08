execute store result score @s ccbs.cal run data get storage ccbs:cal frostologer.center[0] 10000
execute store result score @s ccbs.cal2 run random value -100000..100000
scoreboard players operation @s ccbs.cal += @s ccbs.cal2
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get @s ccbs.cal

execute store result score @s ccbs.cal run data get storage ccbs:cal frostologer.center[2] 10000
execute store result score @s ccbs.cal2 run random value -100000..100000
scoreboard players operation @s ccbs.cal += @s ccbs.cal2
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get @s ccbs.cal

# summon armor_stand ~ ~ ~ {NoGravity:1b}
execute at @s run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~
execute at @s run particle minecraft:snowflake ~ ~0.5 ~ 0 0 0 0.01 10
