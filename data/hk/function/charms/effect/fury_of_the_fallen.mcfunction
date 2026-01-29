execute at @s if score @s hk.player.charms.health matches ..4 run particle minecraft:raid_omen ~ ~1 ~ 0.5 0.5 0.5 0.8 1
execute at @s if score @s hk.player.charms.health matches ..4 run attribute @s minecraft:attack_damage modifier add hk:charms/fury_of_the_fallen 1.75 add_multiplied_total
