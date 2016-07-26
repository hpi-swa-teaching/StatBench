table management
addColumnIfAbsent: aColumnIndex toRow: aRowIndex
	| row |
	row := self rowAt: aRowIndex.
	row size < aColumnIndex
		ifTrue: [ row add: nil withOccurrences: (aColumnIndex - row size) ].
	self columnNumberState add: true withOccurrences: (aColumnIndex - self columnNumberState size)