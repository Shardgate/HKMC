scoreboard players operation @s hk.player.soul.num -= @s hk.player.soul.spell_req

execute as @s at @s run tp @s ~ ~ ~ ~ 90

execute as @s at @s anchored feet positioned ~ ~1 ~ positioned ^ ^ ^1 run summon minecraft:item_display ~ ~ ~ {Tags:[hk.ddash.item_display]}
execute as @s at @s anchored feet positioned ~ ~1 ~ positioned ^ ^ ^1 run tp @n[tag=hk.ddash.item_display,distance=..2] ~ ~ ~ ~ 90
execute as @s at @s anchored feet positioned ~ ~1 ~ positioned ^ ^ ^1 run ride @s mount @n[tag=hk.ddash.item_display,distance=..2]
execute as @s at @s anchored feet positioned ~ ~1 ~ positioned ^ ^ ^1 as @n[tag=hk.ddash.item_display,distance=..2] run function hk:abilities/ddash/start