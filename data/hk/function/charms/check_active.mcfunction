attribute @s minecraft:movement_speed modifier remove hk:charms/sprintmaster
attribute @s minecraft:max_health modifier remove hk:charms/unbreakable_heart
attribute @s minecraft:attack_damage modifier remove hk:charms/unbreakable_strength
attribute @s minecraft:attack_damage modifier remove hk:charms/fury_of_the_fallen
attribute @s minecraft:attack_damage modifier remove hk:charms/rage
attribute @s minecraft:attack_knockback modifier remove hk:charms/heavy_blow
attribute @s minecraft:attack_speed modifier remove hk:charms/quick_slash
attribute @s minecraft:entity_interaction_range modifier remove hk:charms/longnail
attribute @s minecraft:entity_interaction_range modifier remove hk:charms/mark_of_pride
attribute @s minecraft:max_health modifier remove hk:charms/jonis_blessing
execute if entity @s[team=hk.charms.passives] run team leave @s
tag @s remove hk.charms.shield_active
tag @s remove hk.charms.child_active

execute if score @s hk.charms.stalwart_shell.active matches 1.. run function hk:charms/effect/stalwart_shell
execute if score @s hk.charms.sprintmaster.active matches 1.. run function hk:charms/effect/sprintmaster
execute if score @s hk.charms.grubsong.active matches 1.. run function hk:charms/effect/grubsong
execute if score @s hk.charms.unbreakable_heart.active matches 1.. run function hk:charms/effect/unbreakable_heart
execute if score @s hk.charms.unbreakable_strength.active matches 1.. unless score @s hk.charms.fury_of_the_fallen.active matches 1.. run function hk:charms/effect/unbreakable_strength
execute if score @s hk.charms.heavy_blow.active matches 1.. run function hk:charms/effect/heavy_blow
execute if score @s hk.charms.quick_slash.active matches 1.. run function hk:charms/effect/quick_slash
execute if score @s hk.charms.longnail.active matches 1.. unless score @s hk.charms.mark_of_pride.active matches 1.. run function hk:charms/effect/longnail
execute unless score @s hk.charms.longnail.active matches 1.. if score @s hk.charms.mark_of_pride.active matches 1.. run function hk:charms/effect/mark_of_pride
execute if score @s hk.charms.longnail.active matches 1.. if score @s hk.charms.mark_of_pride.active matches 1.. run attribute @s minecraft:entity_interaction_range modifier add hk:charms/mark_of_pride 1 add_value
execute unless score @s hk.charms.unbreakable_strength.active matches 1.. if score @s hk.charms.fury_of_the_fallen.active matches 1.. run function hk:charms/effect/fury_of_the_fallen
execute if score @s hk.charms.unbreakable_strength.active matches 1.. if score @s hk.charms.fury_of_the_fallen.active matches 1.. run function hk:charms/effect/rage
execute if score @s hk.charms.thorns_of_agony.active matches 1.. run function hk:charms/effect/thorns_of_agony
execute if score @s hk.charms.defenders_crest.active matches 1.. run function hk:charms/effect/defenders_crest
function hk:charms/effect/lifeblood_heart
execute if score @s hk.charms.jonis_blessing.active matches 0 if score @s hk.charms.jonis_blessing.active.old matches 1.. run effect clear @s absorption
execute if score @s hk.charms.jonis_blessing.active matches 0 if score @s hk.charms.jonis_blessing.active.old matches 1.. run effect give @s instant_health 1 5 true
execute if score @s hk.charms.jonis_blessing.active matches 1.. if score @s hk.charms.jonis_blessing.active.old matches 0 run scoreboard players set @s hk.charms.deathcount 1
scoreboard players operation @s hk.charms.jonis_blessing.active.old = @s hk.charms.jonis_blessing.active
execute if score @s hk.charms.jonis_blessing.active matches 1.. run function hk:charms/effect/jonis_blessing
execute if score @s hk.charms.kingsoul.active matches 1.. run function hk:charms/effect/kingsoul
execute if score @s hk.charms.carefree_melody.active matches 1.. run function hk:charms/effect/carefree_melody
execute if score @s hk.charms.void_heart.active matches 1.. run function hk:charms/effect/void_heart
execute if score @s hk.charms.hiveblood.active matches 1.. run function hk:charms/effect/hiveblood
execute as @s at @s as @e[type=item_display,tag=hk.charms.shield_dream] if score @p hk.p.id = @s hk.p.id run function hk:charms/effect/dreamshield_tick
execute if score @s hk.charms.dreamshield.active matches 1.. run function hk:charms/effect/dreamshield
execute as @s at @s as @e[type=bee,tag=hk.charms.grimmchild.bee] if score @p hk.p.id = @s hk.p.id run function hk:charms/effect/grimmchild_tick
execute if score @s hk.charms.grimmchild.active matches 1.. run function hk:charms/effect/grimmchild

tag @s remove hk.charms.hiveblood_melody

# Failed Charms
# execute if score @s hk.charms.weaversong.active matches 1.. run function hk:charms/effect/weaversong
# execute if score @s hk.charms.glowing_womb.active matches 1.. run function hk:charms/effect/glowing_womb
# execute if score @s hk.charms.baldur_shell.active matches 1.. run function hk:charms/effect/baldur_shell
# execute if score @s hk.charms.flukenest.active matches 1.. run function hk:charms/effect/flukenest
