# Remove one from the raycast limit
scoreboard players remove @s hk.shade.raycast 1

# Check if the raycast has hit an entity's hitbox
execute unless entity @s[tag=hk.charm.shaman] positioned ~-.99 ~-.99 ~-.99 as @e[type=#hk:hostile,dx=0,tag=!hk.venge.raycaster] positioned ~.99 ~.99 ~.99 as @s[dx=0] run damage @s 10 magic
execute if entity @s[tag=hk.charm.shaman] positioned ~-.198 ~-.198 ~-.198 as @e[type=#hk:hostile,dx=0,tag=!hk.venge.raycaster] positioned ~.198 ~.198 ~.198 as @s[dx=0] run damage @s 14 magic

execute unless block ~ ~ ~ #minecraft:replaceable if score @s hk.shade.raycast matches 1.. run return run function hk:abilities/shade/damage_shade

tp @s ~ ~ ~

# If the raycast has not hit a wall, and the limit has not been reached, move the hk.shade.raycast forward and run the function again
execute if score @s hk.shade.raycast matches 0 run function hk:abilities/shade/damage_shade
execute if block ~ ~ ~ #minecraft:replaceable if score @s hk.shade.raycast matches 1.. run scoreboard players set @s hk.shade.raycast.cool 2