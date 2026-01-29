tag @s add hk.player.loaded
function hk:soul/load_player
tag @s remove hk.monarch_wings.jump
tag @s remove hk.monarch_wings

tag @s remove hk.ismas_tear.effect
tag @s remove hk.ismas_tear
tag @s remove hk.shade_cloak.effect
tag @s remove hk.shade_cloak
tag @s remove hk.mothwing_cloak.effect
tag @s remove hk.mothwing_cloak
tag @s remove hk.crystal_heart
tag @s remove hk.crystal_heart.effect
tag @s remove hk.mantis_claw
tag @s remove hk.mantis_claw.effect

tag @s remove hk.vengeful_spirit
tag @s remove hk.shade_soul
tag @s remove hk.desolate_dive
tag @s remove hk.descending_dark
tag @s remove hk.howling_wraiths
tag @s remove hk.abyss_shriek

tag @s remove hk.dash_slash
tag @s remove hk.great_slash
tag @s remove hk.cyclone_slash

tag @s remove hk.old_nail

# Player DB
function pdb:new_player
data modify storage pdb:main in set value {hk:{dreamgate:{x:NaN,y:NaN,z:NaN}}}
data modify storage pdb:main in set value {hk:{charms:[]}}
function pdb:save_me

tellraw @s {"translate": "hk.item.obtained.ability","with": [{"text": "[Ability] Focus","color":"green"}]}
tellraw @s {"translate": "hk.item.focus.lore"}

effect give @s resistance 1 255 true
team leave @s[team=hk.charms.passives]
scoreboard players set @s hk.p.id 0
scoreboard players add .main hk.p.id 1
scoreboard players operation @s hk.p.id = .main hk.p.id

# Charms
execute if score .global hk.charms.enabled matches 1 run scoreboard players set @s hk.charms.notches 3
execute if score .global hk.charms.enabled matches 0 run scoreboard players set @s hk.charms.notches 0
scoreboard players set @s hk.charms.notches_used 0

function hk:charms/load_player

function hk:load_recipes