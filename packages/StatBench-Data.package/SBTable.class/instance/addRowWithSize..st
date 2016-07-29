table management
addRowWithSize: aRowSize
	self addRow: (OrderedCollection new: aRowSize withAll: nil).
	self columnNumberState add: true withOccurrences: (aRowSize - self columnNumberState size)