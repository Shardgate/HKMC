# damage @s 4 fly_into_wall
execute unless block ~ ~ ~ #minecraft:replaceable run tp @s ^ ^ ^-1
execute if block ~ ~ ~ #minecraft:replaceable run tp @s ^ ^ ^
tag @s remove hk.dash_slash.raycaster
scoreboard players set @s hk.dash_slash.raycast 0

tag @s add hk.dash.cooldown
