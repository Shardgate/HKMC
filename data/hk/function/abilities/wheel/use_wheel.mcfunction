advancement revoke @s only hk:use_wheel

execute unless score @s hk.player.soul.num >= @s hk.player.soul.spell_req run playsound block.note_block.didgeridoo player @s ~ ~ ~ 1
execute unless score @s hk.player.soul.num >= @s hk.player.soul.spell_req run return run tellraw @s {"translate": "hk.msg.not_enough_soul"}

execute if entity @s[tag=hk.sneaking] run playsound block.note_block.didgeridoo player @s ~ ~ ~ 1
execute if entity @s[tag=hk.sneaking] run return run tellraw @s {"translate": "hk.msg.sneaking"}

execute store result score @s hk.dash.raycast run data get entity @s Pos[1]
execute unless score @s hk.dash.raycast matches -64..319 run return fail

# Vengeful Spirit
execute store result score @s hk.dash.raycast run data get entity @s Rotation[1]

execute if score @s hk.dash.raycast matches -45..45 as @s[tag=hk.vengeful_spirit] run return run function hk:abilities/spirit/cast_vengeful
execute if score @s hk.dash.raycast matches -45..45 as @s[tag=hk.shade_soul] run return run function hk:abilities/spirit/cast_shade

execute if score @s hk.dash.raycast matches 90 as @s[tag=hk.descending_dark] run return run function hk:abilities/descending_dark
execute if score @s hk.dash.raycast matches 90 as @s[tag=hk.desolate_dive] run return run function hk:abilities/desolate_dive

execute if score @s hk.dash.raycast matches -90 as @s[tag=hk.abyss_shriek] run return run function hk:abilities/abyss_shriek
execute if score @s hk.dash.raycast matches -90 as @s[tag=hk.howling_wraiths] run return run function hk:abilities/howling_wraiths
