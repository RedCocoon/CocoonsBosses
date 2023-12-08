data merge entity @s {Health:1024.0f}
data modify entity @s Rotation set from entity @p Rotation
execute on passengers run data modify entity @s Rotation set from entity @p Rotation
scoreboard players set @s ccbs.state 2

# tag @a remove ccbs.attacker