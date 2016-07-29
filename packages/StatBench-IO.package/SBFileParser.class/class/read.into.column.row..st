file input
read: anEntry into: aTable column: aColumnIndex row: aRowIndex
	aTable addRowIfAbsent: aRowIndex.
	aTable columnNumberState at: aColumnIndex ifAbsentPut: [ true ].
	(Number isStringANumber: anEntry)
		ifTrue: [ aTable addColumnIfAbsent: aColumnIndex toRow: aRowIndex value: anEntry raw: false ]
		ifFalse: [
			aTable addColumnIfAbsent: aColumnIndex toRow: aRowIndex value: anEntry raw: true.
			aTable columnNumberState at: aColumnIndex put: false ]