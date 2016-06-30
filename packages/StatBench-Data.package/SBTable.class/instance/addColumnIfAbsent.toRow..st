table management
addColumnIfAbsent: columnIndex toRow: rowIndex
	| row |
	row := self rowAt: rowIndex.
	row size < columnIndex
		ifTrue: [ row add: nil withOccurrences: (columnIndex - row size) ].
	self columnNumberState add: true withOccurrences: (columnIndex - self columnNumberState size)