tag @p add hk.charms.shield_active

scoreboard players add @s hk.charms.dreamshield.rotation 6
execute if score @s hk.charms.dreamshield.rotation matches 360.. run scoreboard players set @s hk.charms.dreamshield.rotation 0

execute if score @s hk.charms.dreamshield.cool matches 1.. run scoreboard players remove @s hk.charms.dreamshield.cool 1
execute if score @s hk.charms.dreamshield.cool matches 1 run data modify entity @s item.components."minecraft:item_model" set value "hk:dreamshield"

execute store result storage hk:dreamshield_rotate val int 1 run scoreboard players get @s hk.charms.dreamshield.rotation
function hk:charms/effect/dreamshield_rotate with storage hk:dreamshield_rotate