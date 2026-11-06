data modify entity @s item.components."minecraft:item_model" set value "hk:dreamshield_broken"
scoreboard players set @s hk.charms.dreamshield.cool 101
damage @n[type=#hk:hostile,distance=..1.5, tag=!smithed.entity] 10 player_attack by @s