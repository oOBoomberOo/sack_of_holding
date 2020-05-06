data modify storage boomber:sack_of_holding calculation set from storage boomber:sack_of_holding list[0]
data remove storage boomber:sack_of_holding list[0]

function boomber:sack_of_holding/sack/blacklist/filter

execute if data storage boomber:sack_of_holding list run function boomber:sack_of_holding/sack/blacklist