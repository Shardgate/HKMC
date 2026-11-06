
scoreboard players remove @s hk.charms.spore_shroom.cool 1
scoreboard players remove @s hk.charms.spore_shroom.cool2 1
execute if score @s hk.charms.spore_shroom.cool2 matches 0 if entity @s[tag=hk.charms.spore_cloud.normal] at @s as @e[type=#hk:hostile,tag=!hk.charms.spore_immune,distance=..2.3, tag=!smithed.entity] run damage @s 2 wither
execute if score @s hk.charms.spore_shroom.cool2 matches 0 if entity @s[tag=hk.charms.spore_cloud.crest] at @s as @e[type=#hk:hostile,tag=!hk.charms.spore_immune,distance=..2.3, tag=!smithed.entity] run damage @s 2 wither
execute if score @s hk.charms.spore_shroom.cool2 matches 0 if entity @s[tag=hk.charms.spore_cloud.deep] at @s as @e[type=#hk:hostile,tag=!hk.charms.spore_immune,distance=..3, tag=!smithed.entity] run damage @s 2 wither
execute if score @s hk.charms.spore_shroom.cool2 matches 0 if entity @s[tag=hk.charms.spore_cloud.both] at @s as @e[type=#hk:hostile,tag=!hk.charms.spore_immune,distance=..3, tag=!smithed.entity] run damage @s 2 wither

execute if score @s hk.charms.spore_shroom.cool2 matches 0 if entity @s[tag=hk.charms.spore_cloud.normal] at @s positioned ~ ~1.5 ~ run function hk:tick/spore_shroom/spore_shroom_circle
execute if score @s hk.charms.spore_shroom.cool2 matches 0 if entity @s[tag=hk.charms.spore_cloud.crest] at @s positioned ~ ~1.5 ~ run function hk:tick/spore_shroom/crest_shroom_circle
execute if score @s hk.charms.spore_shroom.cool2 matches 0 if entity @s[tag=hk.charms.spore_cloud.deep] at @s positioned ~ ~1.5 ~ run function hk:tick/spore_shroom/deep_shroom
execute if score @s hk.charms.spore_shroom.cool2 matches 0 if entity @s[tag=hk.charms.spore_cloud.both] at @s positioned ~ ~1.5 ~ run function hk:tick/spore_shroom/deep_crest

execute if score @s hk.charms.spore_shroom.cool2 matches 0 if entity @s[tag=hk.charms.spore_cloud.normal] run scoreboard players set @s hk.charms.spore_shroom.cool2 4
execute if score @s hk.charms.spore_shroom.cool2 matches 0 if entity @s[tag=hk.charms.spore_cloud.deep] run scoreboard players set @s hk.charms.spore_shroom.cool2 4
execute if score @s hk.charms.spore_shroom.cool2 matches 0 if entity @s[tag=hk.charms.spore_cloud.crest] run scoreboard players set @s hk.charms.spore_shroom.cool2 3
execute if score @s hk.charms.spore_shroom.cool2 matches 0 if entity @s[tag=hk.charms.spore_cloud.both] run scoreboard players set @s hk.charms.spore_shroom.cool2 3