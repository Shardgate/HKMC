execute if score @s hk.charms.kingsoul.active matches 1.. if score @s hk.charms.kingsoul.cool matches 1.. run return run scoreboard players remove @s hk.charms.kingsoul.cool 1

execute if score @s hk.charms.kingsoul.active matches 1.. unless score @s hk.charms.kingsoul.cool matches 1.. run scoreboard players add @s hk.player.soul.num 4
execute if score @s hk.charms.kingsoul.active matches 1.. unless score @s hk.charms.kingsoul.cool matches 1.. run scoreboard players add @s hk.charms.kingsoul.cool 40