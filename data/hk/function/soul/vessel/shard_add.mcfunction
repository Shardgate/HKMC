execute at @s unless items entity @s container.* poisonous_potato[minecraft:custom_data~{hk:{type:"shard"}}] run return fail
clear @s poisonous_potato[minecraft:custom_data~{hk:{type:"shard"}}] 1
scoreboard players add @s hk.player.soul.mask.shards 1

execute at @s if score @s hk.player.soul.mask.shards matches 1 run title @s times 10t 30t 20t
execute at @s if score @s hk.player.soul.mask.shards matches 2 run title @s times 10t 30t 20t
execute at @s if score @s hk.player.soul.mask.shards matches 3 run title @s times 10t 30t 20t
execute at @s if score @s hk.player.soul.mask.shards matches 4.. run title @s times 10t 30t 20t
execute at @s if score @s hk.player.soul.mask.shards matches 1 run title @a title {"font":"hk:gui","text":"❤"}
execute at @s if score @s hk.player.soul.mask.shards matches 2 run title @a title {"font":"hk:gui","text":"🧡"}
execute at @s if score @s hk.player.soul.mask.shards matches 3 run title @a title {"font":"hk:gui","text":"💛"}
execute at @s if score @s hk.player.soul.mask.shards matches 4.. run title @a title {"font":"hk:gui","text":"💚"}

execute at @s if score @s hk.player.soul.mask.shards matches 4.. run effect give @s minecraft:saturation 2 255 true
execute at @s if score @s hk.player.soul.mask.shards matches 4.. run scoreboard players add @s hk.player.soul.masks 1
execute at @s if score @s hk.player.soul.mask.shards matches 4.. run scoreboard players set @s hk.player.soul.mask.shards 0

scoreboard players set @s hk.player.soul.mask.anim.cool 100