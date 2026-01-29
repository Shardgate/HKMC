execute at @s on vehicle run team join hk.charms.passives
execute at @s on vehicle run data modify entity @n[type=minecraft:armor_stand] Rotation set from entity @s Rotation
execute unless predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{type:"bee"}}}] run kill @s

execute if score @s hk.charms.grimmchild.cool matches 1.. run scoreboard players remove @s hk.charms.grimmchild.cool 1
execute at @s unless score @s hk.charms.grimmchild.cool matches 1.. if entity @n[team=!hk.charms.passives,type=#hk:hostile,distance=..7] run summon minecraft:item_display ~ ~1 ~ {Tags:["hk.charms.missile"],item:{id:"minecraft:poisonous_potato",components:{item_model:"hk:missile"}},item_display:"ground"}
execute at @s unless score @s hk.charms.grimmchild.cool matches 1.. if entity @n[team=!hk.charms.passives,type=#hk:hostile,distance=..7] run scoreboard players set @s hk.charms.grimmchild.cool 40