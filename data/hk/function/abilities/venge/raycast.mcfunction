# Remove one from the raycast limit
scoreboard players remove @s hk.venge.raycast 1

# Check if the raycast has hit an entity's hitbox
execute unless entity @s[tag=hk.charm.shaman] positioned ~-.99 ~-.99 ~-.99 as @e[type=#hk:hostile,dx=0,tag=!hk.venge.raycaster] positioned ~.99 ~.99 ~.99 as @s[dx=0] run damage @s 5 magic
execute if entity @s[tag=hk.charm.shaman] positioned ~-.198 ~-.198 ~-.198 as @e[type=#hk:hostile,dx=0,tag=!hk.venge.raycaster] positioned ~.198 ~.198 ~.198 as @s[dx=0] run damage @s 7 magic

execute unless block ~ ~ ~ #minecraft:replaceable if score @s hk.venge.raycast matches 1.. run return run function hk:abilities/venge/damage_venge

tp @s ~ ~ ~

# If the raycast has not hit a wall, and the limit has not been reached, move the hk.venge.raycast forward and run the function again
execute if score @s hk.venge.raycast matches 0 run function hk:abilities/venge/damage_venge
execute if block ~ ~ ~ #minecraft:replaceable if score @s hk.venge.raycast matches 1.. run scoreboard players set @s hk.venge.raycast.cool 2