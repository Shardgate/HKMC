execute if score @s hk.dash.raycast.cool2 matches 1.. run scoreboard players remove @s hk.dash.raycast.cool2 1
execute if score @s hk.sdash.raycast.cool2 matches 1.. run scoreboard players remove @s hk.sdash.raycast.cool2 1

execute if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}}] run tag @s remove hk.dash.cooldown

execute at @s if score @s hk.generic_dash.hold_w matches 1.. run scoreboard players remove @s hk.generic_dash.hold_w 1

execute at @s if entity @s[tag=hk.generic_dash.hold_w] unless predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:1b}}}}] run tag @s remove hk.generic_dash.hold_w

execute at @s if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:1b}}}}] unless entity @s[tag=hk.generic_dash.hold_w] if score @s hk.generic_dash.hold_w matches 1.. if entity @s[tag=hk.mothwing_cloak,tag=!hk.sneaking] run function hk:abilities/dash/start
execute at @s if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:1b}}}}] unless entity @s[tag=hk.generic_dash.hold_w] if score @s hk.generic_dash.hold_w matches 1.. if entity @s[tag=hk.shade_cloak,tag=!hk.sneaking] run function hk:abilities/sdash/start

execute at @s if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:1b}}}}] unless entity @s[tag=hk.generic_dash.hold_w] if score @s hk.generic_dash.hold_w matches 1.. if entity @s[tag=hk.dash_slash,tag=hk.sneaking] if entity @s[tag=hkna_has_sword] if entity @s[tag=hk.dash_slash,scores={hkna_sword_timer=50},predicate=hk:sneaking] unless entity @s[x_rotation=90] unless entity @s[x_rotation=-90] at @s run function hk:nail_arts/dash_slash

execute at @s if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:1b}}}}] run tag @s add hk.generic_dash.hold_w
execute at @s if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:1b}}}}] run scoreboard players set @s hk.generic_dash.hold_w 5