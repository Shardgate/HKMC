schedule function hk:lantern/main_10t 10t
execute as @e[type=marker,tag=hk.lantern_block] at @s run function hk:lantern/delete
execute as @e[type=marker,tag=hk.claw_block] at @s run function hk:lantern/delete

execute as @a if predicate {condition:"minecraft:all_of",terms:[{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{mainhand:{items:"minecraft:poisonous_potato",predicates:{"minecraft:custom_data":{hk:{type:"lantern"}}}}}}}]} at @s run function hk:lantern/light
execute as @a if predicate {condition:"minecraft:all_of",terms:[{condition:"minecraft:entity_properties",entity:"this",predicate:{equipment:{offhand:{items:"minecraft:poisonous_potato",predicates:{"minecraft:custom_data":{hk:{type:"lantern"}}}}}}}]} at @s run function hk:lantern/light

execute as @a[tag=hk.mantis_claw] at @s anchored eyes unless block ^ ^ ^1 #minecraft:replaceable run function hk:lantern/mantis_claw