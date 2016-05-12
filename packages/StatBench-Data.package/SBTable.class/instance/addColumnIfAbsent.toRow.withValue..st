table management
addColumnIfAbsent: columnIndex toRow: rowIndex withValue: aValue
	| row |
	row  := self rows at: rowIndex.
	row size < columnIndex
		ifTrue: [
			(columnIndex - row size - 1) timesRepeat: [ row add: nil ].
			row add: aValue. ]
		ifFalse: [ row at: columnIndex put: aValue ]