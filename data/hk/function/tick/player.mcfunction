execute as @s[tag=!hk.player.loaded] run function hk:load_player

tag @s[tag=hk.sneaking] remove hk.sneaking
execute if predicate hk:sneaking run tag @s add hk.sneaking

# Spell req scoreboard
execute unless score @s hk.charms.spell_twister.active matches 1.. run scoreboard players set @s hk.player.soul.spell_req 33
execute if score @s hk.charms.spell_twister.active matches 1.. run scoreboard players set @s hk.player.soul.spell_req 24

# Ability Wheel Drop Prevention
execute if score .global hk.config.ability_wheel.clear matches 1.. run function hk:tick/clear_ability_wheel
execute at @s if items entity @s container.* iron_sword[custom_data~{hk:{type:"nail"}}] run tag @s add hk.old_nail

# Delicate Flower
execute at @s if entity @s[nbt={HurtTime:9s}] if items entity @s container.* poisonous_potato[item_model="hk:collectible/delicate_flower"] run playsound minecraft:block.grass.break player @s ~ ~ ~
execute at @s if entity @s[nbt={HurtTime:9s}] if items entity @s container.* poisonous_potato[item_model="hk:collectible/delicate_flower"] run loot give @s loot hk:collectible/ruined_flower
execute at @s if entity @s[nbt={HurtTime:9s}] if items entity @s container.* poisonous_potato[item_model="hk:collectible/delicate_flower"] run clear @s poisonous_potato[item_model="hk:collectible/delicate_flower"] 1

# Abilities/Spells/Nail Arts Recipe
function hk:abilities/recipe
execute at @s if items entity @s[tag=!hk.shade_soul,tag=hk.vengeful_spirit] container.* poisonous_potato[item_model="hk:spells/shade_soul"] run function hk:abilities/recipes/shade_soul
execute at @s if items entity @s[tag=!hk.vengeful_spirit,tag=!hk.shade_soul] container.* poisonous_potato[item_model="hk:spells/vengeful_spirit"] run function hk:abilities/recipes/vengeful_spirit
execute at @s if items entity @s[tag=!hk.descending_dark,tag=hk.desolate_dive] container.* poisonous_potato[item_model="hk:spells/descending_dark"] run function hk:abilities/recipes/descending_dark
execute at @s if items entity @s[tag=!hk.desolate_dive,tag=!hk.descending_dark] container.* poisonous_potato[item_model="hk:spells/desolate_dive"] run function hk:abilities/recipes/desolate_dive
execute at @s if items entity @s[tag=!hk.abyss_shriek,tag=hk.howling_wraiths] container.* poisonous_potato[item_model="hk:spells/abyss_shriek"] run function hk:abilities/recipes/abyss_shriek
execute at @s if items entity @s[tag=!hk.howling_wraiths,tag=!hk.abyss_shriek] container.* poisonous_potato[item_model="hk:spells/howling_wraiths"] run function hk:abilities/recipes/howling_wraiths

execute at @s if items entity @s[tag=!hk.great_slash] container.* poisonous_potato[item_model="hk:nail_arts/great_slash"] run function hk:abilities/recipes/great_slash
execute at @s if items entity @s[tag=!hk.cyclone_slash] container.* poisonous_potato[item_model="hk:nail_arts/cyclone_slash"] run function hk:abilities/recipes/cyclone_slash
execute at @s if items entity @s[tag=!hk.dash_slash] container.* poisonous_potato[item_model="hk:nail_arts/dash_slash"] run function hk:abilities/recipes/dash_slash

# Notches
execute if score .global hk.charms.enabled matches 1 unless score @s hk.charms.notches matches 1.. run scoreboard players set @s hk.charms.notches 3
execute if score .global hk.charms.enabled matches 0 if score @s hk.charms.notches matches 1.. run scoreboard players set @s hk.charms.notches 0
execute if score .global hk.charms.enabled matches 1 at @s if items entity @s container.* poisonous_potato[minecraft:custom_data~{hk:{type:"charm_notch"}}] at @s unless score @s hk.charms.notches matches 11.. run function hk:charms/recipes/notch

# Charm Menu
scoreboard players enable @s hk.charms.menu.open
execute if score @s hk.charms.menu.open matches 1.. run function hk:menu/open_menu
execute if score @s hk.charms.menu.open matches 1.. run scoreboard players set @s hk.charms.menu.open 0

# Charms
execute if score .global hk.charms.enabled matches 1 run function hk:menu/tick
execute if score .global hk.charms.enabled matches 1 run function hk:charms/recipe
execute if score .global hk.charms.enabled matches 1 run function hk:charms/check_active

# Nail Arts
execute if entity @s[tag=hk.cyclone_slash] if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}}] run function hk:nail_arts/tick
execute if entity @s[tag=hk.great_slash] if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}}] run function hk:nail_arts/tick
execute if entity @s[tag=hk.dash_slash] if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}}] run function hk:nail_arts/tick

# Focus + Crystal Heart
tag @s remove hk.charms.spore_immune
execute if score @s hk.charms.spore_shroom.cool matches 1.. run tag @s add hk.charms.spore_immune
execute if score @s hk.charms.spore_shroom.cool matches 1.. run scoreboard players remove @s hk.charms.spore_shroom.cool 1

execute if entity @s[tag=hk.crystal_heart] if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}}] run function hk:hkaw/tick
execute if entity @s[tag=hk.player.loaded] if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}}] run function hk:hkaw/tick

# Dream Nail
execute if score @s hk.player.dream_nail.cool matches 1.. run scoreboard players remove @s hk.player.dream_nail.cool 1

# Mask Shards
execute if score @s hk.player.soul.vessel.anim.cool matches 1.. run scoreboard players remove @s hk.player.soul.vessel.anim.cool 1
execute if score @s hk.player.soul.vessel.anim.cool matches 0 unless score @s hk.player.soul.vessels matches 3.. run function hk:soul/vessel/fragment_add
execute if score @s hk.player.soul.mask.anim.cool matches 1.. run scoreboard players remove @s hk.player.soul.mask.anim.cool 1
execute if score @s hk.player.soul.mask.anim.cool matches 0 unless score @s hk.player.soul.masks matches 4.. run function hk:soul/vessel/shard_add

# Soul Vessels
execute if score @s hk.player.soul.vessels matches 1 run scoreboard players set @s hk.player.soul.max 132
execute if score @s hk.player.soul.vessels matches 2 run scoreboard players set @s hk.player.soul.max 165
execute if score @s hk.player.soul.vessels matches 3.. run scoreboard players set @s hk.player.soul.max 198

# Mask Effects
execute if score @s hk.player.soul.masks matches 1.. unless score @s hk.charms.jonis_blessing.active matches 1.. run attribute @s minecraft:max_health modifier add hk:mask_1 4 add_value
execute if score @s hk.player.soul.masks matches 2.. unless score @s hk.charms.jonis_blessing.active matches 1.. run attribute @s minecraft:max_health modifier add hk:mask_2 4 add_value
execute if score @s hk.player.soul.masks matches 3.. unless score @s hk.charms.jonis_blessing.active matches 1.. run attribute @s minecraft:max_health modifier add hk:mask_3 4 add_value
execute if score @s hk.player.soul.masks matches 4.. unless score @s hk.charms.jonis_blessing.active matches 1.. run attribute @s minecraft:max_health modifier add hk:mask_4 4 add_value

# Show Soul
execute if items entity @s weapon.* *[custom_data~{hk:{show_soul:true}}] run title @s actionbar [{"font":"hk:gui","text":"🤍"},{"font":"default", "translate": "hk.soul.actionbar","with": [{"color":"green", "score": {"name": "@s","objective": "hk.player.soul.num"}},{"color":"green","score": {"name": "@s","objective": "hk.player.soul.max"}}]}]

# Soul limiter
execute if score @s hk.player.soul.num matches ..-1 run scoreboard players set @s hk.player.soul.num 0
execute if score @s hk.player.soul.num > @s hk.player.soul.max run scoreboard players operation @s hk.player.soul.num = @s hk.player.soul.max
execute if score @s hk.player.soul.deathcount matches 1.. run function hk:soul/reset_soul

# Monarch Wings
execute if entity @s[tag=hk.monarch_wings] if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}}] run tag @s add hk.monarch_wings.jump
execute if entity @s if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}}] run scoreboard players reset @s hk.monarch_wings.jump
execute unless score @s hk.monarch_wings.jump.old matches 1.. if score @s hk.monarch_wings.jump matches 1.. run scoreboard players set @s hk.monarch_wings.jump.cool 8
scoreboard players operation @s hk.monarch_wings.jump.old = @s hk.monarch_wings.jump
execute if score @s hk.monarch_wings.jump.cool matches 1.. run scoreboard players remove @s hk.monarch_wings.jump.cool 1
execute if score @s hk.monarch_wings.jump.cool2 matches 1.. run scoreboard players remove @s hk.monarch_wings.jump.cool2 1
execute if score @s hk.monarch_wings.jump.cool3 matches 1.. run scoreboard players remove @s hk.monarch_wings.jump.cool3 1
execute if score @s hk.monarch_wings.jump.cool2 matches 1 run attribute @s minecraft:gravity modifier remove hk:double_jump
execute if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}}] run attribute @s minecraft:safe_fall_distance modifier remove hk:double_jump
execute as @s[tag=hk.monarch_wings] at @s[tag=hk.monarch_wings] if block ~ ~-1 ~ air at @s[tag=hk.monarch_wings.jump] if score @s hk.monarch_wings.jump.cool matches 0 if score @s hk.monarch_wings.jump.cool2 matches 0 if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_swimming:0b}}}] unless predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_flying:1b}}}] unless predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:1b}}}] if predicate [{condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{jump:1b}}}}] run function hk:abilities/monarch_wings

# Isma's Tear
execute at @s if entity @s[tag=hk.ismas_tear,tag=!hk.sneaking] run effect give @s fire_resistance 1 255 true

# Generic Dash
function hk:abilities/generic_dash

# Dash
execute if score @s hk.dash.raycast.cool matches 1.. run scoreboard players remove @s hk.dash.raycast.cool 1
execute if score @s hk.dash.raycast.cool matches 1 at @s anchored feet rotated ~ 0 positioned ^ ^ ^1 run function hk:abilities/dash/raycast

# Sdash
execute if score @s hk.sdash.raycast.cool matches 1.. run scoreboard players remove @s hk.sdash.raycast.cool 1
execute if score @s hk.sdash.raycast.cool matches 1 at @s anchored feet rotated ~ 0 positioned ^ ^ ^1 run function hk:abilities/sdash/raycast

# Dash_slash
execute if score @s hk.dash_slash.raycast.cool matches 1.. run scoreboard players remove @s hk.dash_slash.raycast.cool 1
execute if score @s hk.dash_slash.raycast.cool matches 1 at @s anchored feet rotated ~ 0 positioned ^ ^ ^1 run function hk:abilities/dash_slash/raycast