setblock ~ ~ ~ minecraft:soul_campfire[lit=false]
setblock ~1 ~ ~ minecraft:soul_campfire[lit=false]
setblock ~-1 ~ ~ minecraft:soul_campfire[lit=false]
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:item_display ~ ~ ~ {Tags:["hk.bench.dis"], item_display:"ground",item:{id:"minecraft:poisonous_potato",components:{item_model:"hk:bench"}}}
execute align xyz positioned ~0.5 ~0.5 ~0.5 run rotate @n[tag=hk.bench.dis] -90 0

execute positioned ~ ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:interaction ~ ~-0.1 ~ {Tags:["hk.bench.int"],width:1.1f,height:1.1f}
execute positioned ~ ~ ~ align xyz positioned ~0.5 ~ ~0.5 run rotate @n[tag=hk.bench.int] -90 0

execute positioned ~1 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:interaction ~ ~-0.1 ~ {Tags:["hk.bench.int"],width:1.1f,height:1.1f}
execute positioned ~1 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run rotate @n[tag=hk.bench.int] -90 0

execute positioned ~-1 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:interaction ~ ~-0.1 ~ {Tags:["hk.bench.int"],width:1.1f,height:1.1f}
execute positioned ~-1 ~ ~ align xyz positioned ~0.5 ~ ~0.5 run rotate @n[tag=hk.bench.int] -90 0