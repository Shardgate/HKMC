execute unless block ~ ~ ~ #minecraft:replaceable run tp @s ^ ^ ^-1
tag @s remove hk.cdash.raycaster
scoreboard players set @s hk.cdash.raycast 0

tag @s add hk.dash.cooldown

kill @s