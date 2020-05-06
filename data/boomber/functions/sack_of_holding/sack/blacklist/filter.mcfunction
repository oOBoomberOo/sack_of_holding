#define score_holder #success
scoreboard players set #success bb.sh.var 0
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation.tag.ucit{id: "used_sack_of_holding", from: "boomber:sack_of_holding"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:white_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:orange_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:magenta_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:light_blue_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:yellow_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:lime_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:pink_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:gray_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:light_gray_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:cyan_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:purple_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:blue_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:brown_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:green_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:red_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 if data storage boomber:sack_of_holding calculation{id: "minecraft:black_shulker_box"} run function boomber:sack_of_holding/sack/blacklist/drop_item
execute if score #success bb.sh.var matches 0 run data modify storage boomber:sack_of_holding output append from storage boomber:sack_of_holding calculation
