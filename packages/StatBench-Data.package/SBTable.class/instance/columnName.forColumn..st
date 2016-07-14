table management
columnName: aString forColumn: columnIndex
	columnIndex > self rowLength
		ifTrue: [ ^ self ].
	self columnNames size < columnIndex
		ifTrue: [ self columnNames add: '' withOccurrences: columnIndex - self columnNames size ].
	self columnNames at: columnIndex put: aString