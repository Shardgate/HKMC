execute unless score @s hk.charms.hiveblood.start_time matches 1.. unless entity @s[tag=hk.charms.hiveblood_melody] if entity @s[nbt={HurtTime:9s}] run scoreboard players set @s hk.charms.hiveblood.start_time 200
execute unless score @s hk.charms.carefree_melody.active matches 1.. if entity @s[nbt={HurtTime:9s}] run scoreboard players set @s hk.charms.hiveblood.start_time 200

execute if score @s hk.charms.hiveblood.start_time matches 0 run effect give @s instant_health 1 0 true
execute if score @s hk.charms.hiveblood.start_time matches 0 run scoreboard players set @s hk.charms.hiveblood.start_time -1
execute if score @s hk.charms.hiveblood.start_time matches 1.. run scoreboard players remove @s hk.charms.hiveblood.start_time 1
