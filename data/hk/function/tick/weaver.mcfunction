team join hk.charms.passives
effect give @s resistance infinite 255 true

execute as @s at @s as @a if score @s hk.p.id = @n[tag=hk.charms.weaverling] hk.p.id at @n[tag=hk.charms.weaverling] if entity @p[distance=12..,team=hk.charms.passives] run tp @n[tag=hk.charms.weaverling] @s
execute at @s run damage @s 0 minecraft:player_attack by @n[tag=!hk.charms.weaverling,team=!hk.charms.passives,distance=..12,type=#hk:weavers]
execute as @s at @s as @a unless score @s hk.p.id = @n[tag=hk.charms.weaverling] hk.p.id at @n[tag=hk.charms.weaverling] run kill @n[type=spider,tag=hk.charms.weaverling]
execute as @s at @s as @a if score @s hk.p.id = @n[tag=hk.charms.weaverling] hk.p.id at @n[tag=hk.charms.weaverling] unless score @s hk.charms.weaversong.active matches 1.. run kill @n[type=spider,tag=hk.charms.weaverling]