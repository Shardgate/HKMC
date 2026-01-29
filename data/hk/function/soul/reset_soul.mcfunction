execute if score @s hk.charms.lifeblood_heart.active matches 1.. unless score @s hk.charms.lifeblood_core.active matches 1.. run effect clear @s absorption
execute if score @s hk.charms.lifeblood_heart.active matches 1.. unless score @s hk.charms.lifeblood_core.active matches 1.. run effect give @s minecraft:absorption infinite 1 true

execute unless score @s hk.charms.lifeblood_heart.active matches 1.. if score @s hk.charms.lifeblood_core.active matches 1.. run effect clear @s absorption
execute unless score @s hk.charms.lifeblood_heart.active matches 1.. if score @s hk.charms.lifeblood_core.active matches 1.. run effect give @s minecraft:absorption infinite 3 true

execute if score @s hk.charms.lifeblood_heart.active matches 1.. if score @s hk.charms.lifeblood_core.active matches 1.. run effect clear @s absorption
execute if score @s hk.charms.lifeblood_heart.active matches 1.. if score @s hk.charms.lifeblood_core.active matches 1.. run effect give @s minecraft:absorption infinite 5 true

execute as @s[gamemode=survival] at @s run function hk:shade/death
execute as @s[gamemode=adventure] at @s run function hk:shade/death

scoreboard players set @s hk.player.soul.num 0
scoreboard players set @s hk.player.soul.num.old 0
scoreboard players set @s hk.player.soul.deathcount 0
scoreboard players set @s hk.player.soul.vessel.anim.cool 0
scoreboard players set @s hk.player.soul.mask.anim.cool 0
scoreboard players set @s hk.player.dream_nail.cool 0

