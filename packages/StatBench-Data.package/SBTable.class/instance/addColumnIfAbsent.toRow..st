table management
addColumnIfAbsent: columnIndex toRow: rowIndex
	| row |
	row  := self rows at: rowIndex.
	row size < columnIndex
		ifTrue: [ (columnIndex - row size) timesRepeat: [ row add: nil ]]