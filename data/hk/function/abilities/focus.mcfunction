advancement revoke @s only hk:use_wheel

execute unless score @s hk.player.soul.num >= @s hk.player.soul.spell_req run playsound block.note_block.didgeridoo player @s ~ ~ ~ 1
execute unless score @s hk.player.soul.num >= @s hk.player.soul.spell_req run return run tellraw @s {"translate": "hk.msg.not_enough_soul"}

execute if entity @s[tag=hk.sneaking] at @s run playsound block.note_block.didgeridoo player @s ~ ~ ~ 1
execute if entity @s[tag=hk.sneaking] run return run tellraw @s {"translate": "hk.msg.sneaking"}

# Focus

execute unless score @s hk.charms.spore_shroom.cool matches 1.. if entity @s[x_rotation=90] unless score @s hk.charms.jonis_blessing.active matches 1.. if score @s hk.charms.spore_shroom.active matches 1.. unless score @s hk.charms.defenders_crest.active matches 1.. unless score @s hk.charms.deep_focus.active matches 1.. at @s run summon marker ~ ~ ~ {Tags:["smithed.entity","smithed.strict","hk.charms.spore","hk.charms.spore_cloud.normal"]}
execute unless score @s hk.charms.spore_shroom.cool matches 1.. if entity @s[x_rotation=90] unless score @s hk.charms.jonis_blessing.active matches 1.. if score @s hk.charms.spore_shroom.active matches 1.. if score @s hk.charms.defenders_crest.active matches 1.. unless score @s hk.charms.deep_focus.active matches 1.. at @s run summon marker ~ ~ ~ {Tags:["smithed.entity","smithed.strict","hk.charms.spore","hk.charms.spore_cloud.crest"]}
execute unless score @s hk.charms.spore_shroom.cool matches 1.. if entity @s[x_rotation=90] unless score @s hk.charms.jonis_blessing.active matches 1.. if score @s hk.charms.spore_shroom.active matches 1.. unless score @s hk.charms.defenders_crest.active matches 1.. if score @s hk.charms.deep_focus.active matches 1.. at @s run summon marker ~ ~ ~ {Tags:["smithed.entity","smithed.strict","hk.charms.spore","hk.charms.spore_cloud.deep"]}
execute unless score @s hk.charms.spore_shroom.cool matches 1.. if entity @s[x_rotation=90] unless score @s hk.charms.jonis_blessing.active matches 1.. if score @s hk.charms.spore_shroom.active matches 1.. if score @s hk.charms.defenders_crest.active matches 1.. if score @s hk.charms.deep_focus.active matches 1.. at @s run summon marker ~ ~ ~ {Tags:["smithed.entity","smithed.strict","hk.charms.spore","hk.charms.spore_cloud.both"]}
execute unless score @s hk.charms.spore_shroom.cool matches 1.. if entity @s[x_rotation=90] unless score @s hk.charms.jonis_blessing.active matches 1.. as @n[tag=hk.charms.spore,distance=..1] run scoreboard players set @s hk.charms.spore_shroom.cool 82
execute unless score @s hk.charms.spore_shroom.cool matches 1.. if entity @s[x_rotation=90] unless score @s hk.charms.jonis_blessing.active matches 1.. as @n[tag=hk.charms.spore,distance=..1] run scoreboard players set @s hk.charms.spore_shroom.cool2 2
execute unless score @s hk.charms.spore_shroom.cool matches 1.. if entity @s[x_rotation=90] unless score @s hk.charms.jonis_blessing.active matches 1.. as @s run scoreboard players set @s hk.charms.spore_shroom.cool 85

execute if entity @s[x_rotation=90] unless score @s hk.charms.jonis_blessing.active matches 1.. unless score @s hk.charms.deep_focus.active matches 1.. run scoreboard players operation @s hk.player.soul.num -= @s hk.player.soul.spell_req
execute if entity @s[x_rotation=90] unless score @s hk.charms.jonis_blessing.active matches 1.. if score @s hk.charms.deep_focus.active matches 1.. run scoreboard players operation @s hk.player.soul.num -= @s hk.player.soul.spell_req
execute if entity @s[x_rotation=90] unless score @s hk.charms.jonis_blessing.active matches 1.. unless score @s hk.charms.deep_focus.active matches 1.. at @s run playsound entity.illusioner.cast_spell player @s ~ ~ ~ 1
execute if entity @s[x_rotation=90] unless score @s hk.charms.jonis_blessing.active matches 1.. if score @s hk.charms.deep_focus.active matches 1.. at @s run playsound entity.illusioner.cast_spell player @s ~ ~ ~ 1
execute if entity @s[x_rotation=90] unless score @s hk.charms.jonis_blessing.active matches 1.. unless score @s hk.charms.deep_focus.active matches 1.. run effect give @s minecraft:instant_health
execute if entity @s[x_rotation=90] unless score @s hk.charms.jonis_blessing.active matches 1.. if score @s hk.charms.deep_focus.active matches 1.. run effect give @s minecraft:instant_health 1 1

execute if entity @s[x_rotation=90] unless score @s hk.charms.jonis_blessing.active matches 1.. run scoreboard players set @s hk.charms.hiveblood.start_time -1