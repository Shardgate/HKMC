# function hk:abilities/cdash/start

execute as @s at @s run tp @s ~ ~ ~ ~ 0

execute as @s at @s anchored feet positioned ~ ~1 ~ positioned ^ ^ ^1 run summon minecraft:item_display ~ ~ ~ {Tags:[hk.cdash.item_display]}
execute as @s at @s anchored feet positioned ~ ~1 ~ positioned ^ ^ ^1 run tp @n[tag=hk.cdash.item_display,distance=..2] ~ ~ ~ ~ 0
execute as @s at @s anchored feet positioned ~ ~1 ~ positioned ^ ^ ^1 run ride @s mount @n[tag=hk.cdash.item_display,distance=..2]
execute as @s at @s anchored feet positioned ~ ~1 ~ positioned ^ ^ ^1 as @n[tag=hk.cdash.item_display,distance=..2] run function hk:abilities/cdash/start