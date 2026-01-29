advancement revoke @s only hk:nail_attack
execute unless score @s hk.player.soul.num >= @s hk.player.soul.max if score @s hk.player.soul.num matches 99.. run scoreboard players add @s hk.player.soul.num 6
execute if score @s hk.charms.soul_catcher.obtained matches 1.. if score @s hk.charms.soul_catcher.active matches 1.. run execute unless score @s hk.player.soul.num >= @s hk.player.soul.max if score @s hk.player.soul.num matches 99.. run scoreboard players add @s hk.player.soul.num 2
execute if score @s hk.charms.soul_eater.obtained matches 1.. if score @s hk.charms.soul_eater.active matches 1.. run execute unless score @s hk.player.soul.num >= @s hk.player.soul.max if score @s hk.player.soul.num matches 99.. run scoreboard players add @s hk.player.soul.num 6

execute unless score @s hk.player.soul.num >= @s hk.player.soul.max unless score @s hk.player.soul.num matches 99.. run scoreboard players add @s hk.player.soul.num 11
execute if score @s hk.charms.soul_catcher.obtained matches 1.. if score @s hk.charms.soul_catcher.active matches 1.. run execute unless score @s hk.player.soul.num >= @s hk.player.soul.max unless score @s hk.player.soul.num matches 99.. run scoreboard players add @s hk.player.soul.num 3
execute if score @s hk.charms.soul_eater.obtained matches 1.. if score @s hk.charms.soul_eater.active matches 1.. run execute unless score @s hk.player.soul.num >= @s hk.player.soul.max unless score @s hk.player.soul.num matches 99.. run scoreboard players add @s hk.player.soul.num 8


execute at @s if score @s hk.player.soul.num matches 33.. unless score @s hk.player.soul.num.old matches 33.. run particle minecraft:poof ~ ~2 ~ 1 1 1 0.01 10
# execute at @s if score @s hk.player.soul.num matches 33.. unless score @s hk.player.soul.num.old matches 33.. run playsound minecraft:block.sculk_shrieker.shriek player @s ~ ~ ~
scoreboard players operation @s hk.player.soul.num.old = @s hk.player.soul.num