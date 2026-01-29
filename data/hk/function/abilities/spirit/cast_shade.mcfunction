scoreboard players operation @s hk.player.soul.num -= @s hk.player.soul.spell_req

execute unless score @s hk.charms.shaman_stone.active matches 1.. as @s at @s anchored eyes positioned ^ ^ ^1 run summon minecraft:item_display ~ ~ ~ {Tags:[hk.spell.shade.spirit],item_display:"ground", item:{id:"minecraft:poisonous_potato",components:{item_model:"hk:spells/shade"}}}

execute if score @s hk.charms.shaman_stone.active matches 1.. as @s at @s anchored eyes positioned ^ ^ ^1 run summon minecraft:item_display ~ ~ ~ {Tags:[hk.spell.shade.spirit],item_display:"ground", item:{id:"minecraft:poisonous_potato",components:{item_model:"hk:spells/big/shade"}}}
execute if score @s hk.charms.shaman_stone.active matches 1.. run execute as @s at @s anchored eyes positioned ^ ^ ^1 run tag @n[tag=hk.spell.shade.spirit,distance=..2] add hk.charm.shaman

execute as @s at @s anchored eyes positioned ^ ^ ^1 run tp @n[tag=hk.spell.shade.spirit,distance=..2] ~ ~ ~ ~ 0
execute as @s at @s anchored eyes positioned ^ ^ ^1 run function hk:abilities/shade/start