execute at @s if entity @s[nbt={HurtTime:9s}] unless score @s hk.player.soul.num >= @s hk.player.soul.max run scoreboard players add @s hk.player.soul.num 15

execute at @s if entity @s[nbt={HurtTime:9s}] unless score @s hk.player.soul.num >= @s hk.player.soul.max positioned ~ ~0.25 ~ run particle minecraft:cloud ^ ^ ^-0.25 0.5 0.5 0.5 0.15 10 force
