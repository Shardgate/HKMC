setblock ~ ~ ~ minecraft:soul_campfire[lit=false]
setblock ~ ~ ~1 minecraft:soul_campfire[lit=false]
setblock ~ ~ ~-1 minecraft:soul_campfire[lit=false]
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Tags:["smithed.entity","smithed.strict","hk.bench.dis"], item_display:"ground",item:{id:"minecraft:poisonous_potato",components:{item_model:"hk:bench"}}}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run rotate @n[tag=hk.bench.dis] 180 0