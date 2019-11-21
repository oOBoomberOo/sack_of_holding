data modify entity @s Item.tag.ucit.sack_of_holding.calculation.item set from entity @s Item.tag.ucit.sack_of_holding.calculation.list[0]
data remove entity @s Item.tag.ucit.sack_of_holding.calculation.list[0]

execute unless data entity @s Item.tag.ucit.sack_of_holding.calculation.item.tag.ucit{id: "used_sack_of_holding", from: "boomber:sack_of_holding"} run data modify entity @s Item.tag.ucit.sack_of_holding.calculation.output append from entity @s Item.tag.ucit.sack_of_holding.calculation.item
execute if data entity @s Item.tag.ucit.sack_of_holding.calculation.item.tag.ucit{id: "used_sack_of_holding", from: "boomber:sack_of_holding"} run function boomber:sack_of_holding/sack/blacklist/drop_item

execute if data entity @s Item.tag.ucit.sack_of_holding.calculation.list[] run function boomber:sack_of_holding/sack/blacklist