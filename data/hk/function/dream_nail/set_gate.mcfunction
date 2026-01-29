function pdb:get_me
data modify storage pdb:main in set from storage pdb:main out
execute align xyz positioned ~0.5 ~ ~0.5 store result storage pdb:main in.hk.dreamgate.x int 1 run data get entity @s Pos[0]
execute align xyz positioned ~0.5 ~ ~0.5 store result storage pdb:main in.hk.dreamgate.y int 1 run data get entity @s Pos[1]
execute align xyz positioned ~0.5 ~ ~0.5 store result storage pdb:main in.hk.dreamgate.z int 1 run data get entity @s Pos[2]
tellraw @s {"translate": "hk.dreamgate.create","with": [{"nbt": "in.hk.dreamgate.x","storage": "pdb:main","color":"light_purple"},{"nbt": "in.hk.dreamgate.y","storage": "pdb:main","color":"light_purple"},{"nbt": "in.hk.dreamgate.z","storage": "pdb:main","color":"light_purple"}]}
function pdb:save_me