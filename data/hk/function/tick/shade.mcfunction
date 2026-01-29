execute at @s on vehicle run team join hk.charms.passives

execute at @s on vehicle run data modify entity @n[type=minecraft:armor_stand] Rotation set from entity @s Rotation
execute unless predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{type:"vex"}}}] run function hk:shade/place
execute unless predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{type:"vex"}}}] run kill @s
execute at @s positioned ~ ~-1 ~ positioned ~ ~0.25 ~ run particle entity_effect{color:[0.000,0.000,0.000,1.00]} ^ ^ ^-0.25 0.5 0.5 0.5 0.15 10 force