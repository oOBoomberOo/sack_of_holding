setblock ~ ~ ~ minecraft:oak_sign{Text1: '[{"text": "Sack of Holding <", "color": "white", "italic": false}, {"nbt": "result.sack_of_holding.custom_name", "storage": "boomber:sack_of_holding", "interpret": true}, {"text": ">"}]'}
data modify entity @s Item.tag.display.Name set from block ~ ~ ~ Text1
setblock ~ ~ ~ minecraft:air