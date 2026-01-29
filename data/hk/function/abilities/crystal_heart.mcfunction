advancement revoke @s only hk:use_wheel

execute if entity @s[tag=hk.sneaking] run playsound block.note_block.didgeridoo player @s ~ ~ ~ 1
execute if entity @s[tag=hk.sneaking] run return run tellraw @s {"translate": "hk.msg.sneaking"}

# Dash
execute unless entity @s[x_rotation=90] if predicate hk:abilities/is_on_ground unless predicate hk:abilities/is_swimming unless predicate hk:abilities/press_forward_key unless predicate hk:abilities/press_jump_key unless predicate hk:sprinting run function hk:abilities/cdash