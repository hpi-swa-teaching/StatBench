math functions
minColumn: aColumn
| min row value|
	min := self row: 1 column: 1. 
	1 to: rows size do: [ :currentRow |
		row := rows at: aColumn..
			value := self row: currentRow  column: aColumn.
			(value < min ) ifTrue: [
				min := value ]].
	^ min