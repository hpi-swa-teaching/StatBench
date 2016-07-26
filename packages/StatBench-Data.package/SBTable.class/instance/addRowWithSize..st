table management
addRowWithSize: aRowSize
	| newRow |
	newRow := OrderedCollection new.
	newRow add: nil withOccurrences: aRowSize.
	self rows add: newRow.
	self columnNumberState add: true withOccurrences: (aRowSize - self columnNumberState size)