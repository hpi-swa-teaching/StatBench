table management
addRowWithMaxLength
	| newRow |
	newRow := OrderedCollection new.
	newRow add: nil withOccurrences: self rowLength.
	self addRow: newRow