playsound block.anvil.use block @a ~ ~ ~
particle explosion ~ ~1 ~

kill @n[type=item,distance=0.01..0.2]
$loot replace entity @s contents loot hk:nail/$(nail)