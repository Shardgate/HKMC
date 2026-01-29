execute if entity @s[nbt={HurtTime:9s}] if predicate {condition:"minecraft:random_chance",chance:0.1} if score @s hk.charms.carefree_melody.hits matches 1 run function hk:charms/effect/melody_block_dmg
execute if entity @s[nbt={HurtTime:9s}] if predicate {condition:"minecraft:random_chance",chance:0.2} if score @s hk.charms.carefree_melody.hits matches 2 run function hk:charms/effect/melody_block_dmg
execute if entity @s[nbt={HurtTime:9s}] if predicate {condition:"minecraft:random_chance",chance:0.3} if score @s hk.charms.carefree_melody.hits matches 3 run function hk:charms/effect/melody_block_dmg
execute if entity @s[nbt={HurtTime:9s}] if predicate {condition:"minecraft:random_chance",chance:0.5} if score @s hk.charms.carefree_melody.hits matches 4 run function hk:charms/effect/melody_block_dmg
execute if entity @s[nbt={HurtTime:9s}] if predicate {condition:"minecraft:random_chance",chance:0.7} if score @s hk.charms.carefree_melody.hits matches 5 run function hk:charms/effect/melody_block_dmg
execute if entity @s[nbt={HurtTime:9s}] if predicate {condition:"minecraft:random_chance",chance:0.8} if score @s hk.charms.carefree_melody.hits matches 6 run function hk:charms/effect/melody_block_dmg
execute if entity @s[nbt={HurtTime:9s}] if predicate {condition:"minecraft:random_chance",chance:0.9} if score @s hk.charms.carefree_melody.hits matches 7.. run function hk:charms/effect/melody_block_dmg

execute if entity @s[nbt={HurtTime:9s}] unless score @s hk.charms.carefree_melody.hits matches 7.. run scoreboard players add @s hk.charms.carefree_melody.hits 1
