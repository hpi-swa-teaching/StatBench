math functions
maxColumn: aColumn
	| max row value|
	max := self row: 1 column: 1. 
	1 to: rows size do: [ :currentRow |
		row := rows at: aColumn..
			value := self row: currentRow  column: aColumn.
			(value > max ) ifTrue: [
				max := value ]].
	^ max