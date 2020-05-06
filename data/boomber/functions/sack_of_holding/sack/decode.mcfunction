data modify block ~ ~ ~ CustomName set from storage boomber:sack_of_holding data.sack_of_holding.custom_name

execute unless data storage boomber:sack_of_holding data.durability{current: 0} run function boomber:sack_of_holding/sack/method/success
execute if data storage boomber:sack_of_holding data.durability{current: 0} run function boomber:sack_of_holding/sack/method/break

scoreboard players set #raycast bb.sh.var 1