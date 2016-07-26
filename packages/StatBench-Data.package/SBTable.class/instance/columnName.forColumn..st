table management
columnName: aString forColumn: aColumnIndex
	| columnNameSize |
	columnNameSize := self columnNames size.
	aColumnIndex > self rowLength
		ifTrue: [ ^ self ].
	columnNameSize < aColumnIndex
		ifTrue: [ self columnNames add: '' withOccurrences: aColumnIndex - columnNameSize ].
	self columnNames at: aColumnIndex put: aString