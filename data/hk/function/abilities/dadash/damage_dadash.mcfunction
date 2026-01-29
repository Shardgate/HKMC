execute at @s unless block ~ ~ ~ #minecraft:replaceable run tp @s ^ ^ ^-1
tag @s remove hk.dadash.raycaster
scoreboard players set @s hk.dadash.raycast 0

tag @s add hk.dash.cooldown

kill @s
