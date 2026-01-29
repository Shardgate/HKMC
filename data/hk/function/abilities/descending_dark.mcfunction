advancement revoke @s only hk:use_wheel

execute if entity @s[tag=hk.sneaking] run playsound block.note_block.didgeridoo player @s ~ ~ ~ 1
execute if entity @s[tag=hk.sneaking] run return run tellraw @s {"translate": "hk.msg.sneaking"}

execute store result score @s hk.dadash.raycast run data get entity @s Pos[1]
execute unless score @s hk.dadash.raycast matches -64..319 run return fail

# Dash
execute if entity @s[x_rotation=90] unless predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{type:"player",vehicle:{type:"minecraft:item_display"}}}] unless predicate hk:abilities/is_on_ground unless predicate hk:abilities/is_swimming unless predicate hk:abilities/press_forward_key unless predicate hk:abilities/press_jump_key unless predicate hk:sprinting run function hk:abilities/dadash