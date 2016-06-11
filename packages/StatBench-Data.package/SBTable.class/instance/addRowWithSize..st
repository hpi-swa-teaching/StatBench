table management
addRowWithSize: rowSize
	| newRow |
	newRow := OrderedCollection new.
	newRow add: nil withOccurrences: rowSize.
	self rows add: newRow.
	self columnNumberState add: true withOccurrences: (rowSize - self columnNumberState size)