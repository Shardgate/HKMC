execute as @s[tag=hk.charms.missile] at @s anchored eyes unless entity @n[team=!hk.charms.passives,type=#hk:hostile,distance=..7, tag=!smithed.entity] run kill @s
execute as @s[tag=hk.charms.missile] at @s anchored eyes facing entity @n[team=!hk.charms.passives,type=#hk:hostile,distance=..7, tag=!smithed.entity] feet positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.5 ~ ~
execute as @s[tag=hk.charms.missile] at @s anchored eyes if entity @n[team=!hk.charms.passives,type=#hk:hostile,distance=..1, tag=!smithed.entity] run damage @n[team=!hk.charms.passives,type=#hk:hostile,distance=..1, tag=!smithed.entity] 12 fireball
execute as @s[tag=hk.charms.missile] at @s anchored eyes if entity @n[team=!hk.charms.passives,type=#hk:hostile,distance=..1, tag=!smithed.entity] run kill @s
execute as @s[tag=hk.charms.missile] at @s anchored eyes unless block ^ ^ ^ #minecraft:replaceable run kill @s

tag @s[tag=hk.charms.shield_dream] remove hk.charms.dreamshiled
execute as @s[tag=hk.charms.shield_dream] at @s as @a if score @s hk.p.id = @n[tag=hk.charms.shield_dream,distance=..0.1] hk.p.id if score @s hk.charms.dreamshield.active matches 1.. run tag @n[tag=hk.charms.shield_dream,distance=..0.1] add hk.charms.dreamshiled
execute if entity @s[tag=hk.charms.shield_dream] unless entity @s[tag=hk.charms.dreamshiled] run kill @s

execute if score @s hk.venge.raycast.cool matches 1.. run scoreboard players remove @s hk.venge.raycast.cool 1
execute if score @s hk.venge.raycast.cool matches 1 at @s anchored eyes positioned ^ ^ ^1 run function hk:abilities/venge/raycast

execute if score @s hk.shade.raycast.cool matches 1.. run scoreboard players remove @s hk.shade.raycast.cool 1
execute if score @s hk.shade.raycast.cool matches 1 at @s anchored eyes positioned ^ ^ ^1 run function hk:abilities/shade/raycast

function hk:tick/marker

execute if entity @s[tag=hk.cdash.item_display] unless predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{type:"minecraft:item_display",passenger:{type:"minecraft:player"},movement:{horizontal_speed:0,vertical_speed:0}}}] run kill @s
execute if entity @s[tag=hk.ddash.item_display] unless predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{type:"minecraft:item_display",passenger:{type:"minecraft:player"},movement:{horizontal_speed:0,vertical_speed:0}}}] run kill @s
execute if entity @s[tag=hk.dadash.item_display] unless predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{type:"minecraft:item_display",passenger:{type:"minecraft:player"},movement:{horizontal_speed:0,vertical_speed:0}}}] run kill @s