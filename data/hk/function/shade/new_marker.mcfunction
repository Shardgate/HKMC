# summon marker
summon marker ~ ~ ~ {Tags:["hk.inv_store","hk.inv_new"]}

# link marker to player    
scoreboard players operation @n[tag=hk.inv_new] hk.inv.id = @s hk.inv.id

# copy Inventory of player to marker data.Inventory
data modify entity @n[tag=hk.inv_new,limit=1] data.Inventory set from entity @p Inventory

# remove the new tag to get ready for the next player
forceload add 0 0
tp @n[tag=hk.inv_new] 0 0 0
tag @e[type=marker,tag=hk.inv_new] remove hk.inv_new