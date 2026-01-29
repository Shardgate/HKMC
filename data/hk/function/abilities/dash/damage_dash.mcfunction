damage @s 4 fly_into_wall
execute unless block ~ ~ ~ #minecraft:replaceable run tp @s ^ ^ ^-1
tag @s remove hk.dash.raycaster
scoreboard players set @s hk.dash.raycast 0

tag @s add hk.dash.cooldown