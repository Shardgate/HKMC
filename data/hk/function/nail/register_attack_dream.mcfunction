advancement revoke @s only hk:dream_nail

execute unless score @s hk.player.dream_nail.cool matches 0 run return fail

execute unless score @s hk.player.soul.num >= @s hk.player.soul.max if score @s hk.player.soul.num matches 99.. run scoreboard players add @s hk.player.dream_nail.cool 30
execute unless score @s hk.player.soul.num >= @s hk.player.soul.max unless score @s hk.player.soul.num matches 99.. run scoreboard players add @s hk.player.dream_nail.cool 30

execute unless score @s hk.player.soul.num >= @s hk.player.soul.max if score @s hk.player.soul.num matches 99.. run scoreboard players add @s hk.player.soul.num 33
execute unless score @s hk.player.soul.num >= @s hk.player.soul.max unless score @s hk.player.soul.num matches 99.. run scoreboard players add @s hk.player.soul.num 33

execute if score @s hk.charms.dream_wielder.active matches 1.. unless score @s hk.player.soul.num >= @s hk.player.soul.max if score @s hk.player.soul.num matches 99.. run scoreboard players add @s hk.player.dream_nail.cool 15
execute if score @s hk.charms.dream_wielder.active matches 1.. unless score @s hk.player.soul.num >= @s hk.player.soul.max unless score @s hk.player.soul.num matches 99.. run scoreboard players add @s hk.player.dream_nail.cool 15

execute if score @s hk.charms.dream_wielder.active matches 1.. unless score @s hk.player.soul.num >= @s hk.player.soul.max if score @s hk.player.soul.num matches 99.. run scoreboard players add @s hk.player.soul.num 33
execute if score @s hk.charms.dream_wielder.active matches 1.. unless score @s hk.player.soul.num >= @s hk.player.soul.max unless score @s hk.player.soul.num matches 99.. run scoreboard players add @s hk.player.soul.num 33

execute at @s if score @s hk.player.soul.num matches 33.. unless score @s hk.player.soul.num.old matches 33.. run particle minecraft:poof ~ ~2 ~ 1 1 1 0.01 10
# execute at @s if score @s hk.player.soul.num matches 33.. unless score @s hk.player.soul.num.old matches 33.. run playsound minecraft:block.sculk_shrieker.shriek player @s ~ ~ ~
scoreboard players operation @s hk.player.soul.num.old = @s hk.player.soul.num