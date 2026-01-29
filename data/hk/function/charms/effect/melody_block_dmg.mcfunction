execute at @s run particle minecraft:raid_omen ~ ~1 ~ 0.5 0.5 0.5 0.8 1
execute at @s run effect give @s instant_health 1 1 true
execute at @s run playsound item.shield.block player @a ~ ~ ~
scoreboard players set @s hk.charms.carefree_melody.hits -1
tag @s add hk.charms.hiveblood_melody