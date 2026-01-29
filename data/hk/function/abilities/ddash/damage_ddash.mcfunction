damage @s 4 fly_into_wall

execute unless block ~ ~ ~ #minecraft:replaceable run tp @s ^ ^ ^-1
tag @s remove hk.ddash.raycaster
scoreboard players set @s hk.ddash.raycast 0

tag @s add hk.dash.cooldown

kill @s