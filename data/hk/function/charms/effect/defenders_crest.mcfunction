execute at @s positioned ~ ~-1 ~ run particle minecraft:dust{color:[0.65,0.50,0.20],scale:1.5} ^ ^1 ^ 0.25 0.6 0.25 0.01 10

execute if score @s hk.charms.defenders_crest.cool matches 1.. run return run scoreboard players remove @s hk.charms.defenders_crest.cool 1

execute as @s at @s as @e[type=#hk:hostile,distance=0.01..3] run damage @s 3 wither
execute as @s at @s at @e[type=#hk:hostile,distance=0.01..3] run particle minecraft:dust{color:[0.65,0.50,0.20],scale:1.5} ^ ^1 ^ 0.25 0.6 0.25 0.01 10

scoreboard players set @s hk.charms.defenders_crest.cool 15