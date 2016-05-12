math functions
min
	| min row value|
	min := self row: 1 column: 1. 
	1 to: rows size do: [ :currentRow |
		row := rows at: currentRow.
		1 to: row size do: [ :currentColumn |
			value := self row: currentRow  column: currentColumn.
			(value < min ) ifTrue: [
				min := value ]]].
	^ min