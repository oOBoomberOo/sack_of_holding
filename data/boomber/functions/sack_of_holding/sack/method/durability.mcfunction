setblock ~ ~ ~ minecraft:oak_sign{Text1: '[{"text": "Durability: ", "color": "gray", "italic": false}, {"nbt": "result.durability.current", "storage": "boomber:sack_of_holding", "color": "gray", "italic": false}, {"text": "/", "color": "gray", "italic": false}, {"nbt": "result.durability.max", "storage": "boomber:sack_of_holding", "color": "gray", "italic": false}]'}
	data modify storage boomber:sack_of_holding result.display.Lore[-1] set value ""
	data modify storage boomber:sack_of_holding result.display.Lore[-1] set from block ~ ~ ~ Text1
setblock ~ ~ ~ minecraft:air