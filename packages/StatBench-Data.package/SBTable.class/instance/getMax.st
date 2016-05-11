math functions
getMax
	| max row value|
	max := self row: 1 column: 1. 
	(1 to: rows size) do: [ :currentRow |
		row := rows at: currentRow.
		(1 to: row size) do: [ :currentColumn |
			value := self row: currentRow  column: currentColumn.
			(value > max ) ifTrue: [
				max := value ]]].
	^ max.