table management
searchForAll: aValue inColumn: aColumn
	| rowDictionary searchValue |
	searchValue := SBNumber newFromNumber: aValue.
	rowDictionary := Dictionary new.
	self rows select: [ :currentRow |
		(currentRow at: aColumn) = searchValue ]
	thenDo: [ :currentRow |
		rowDictionary at: (self indexOfRow: currentRow) put: currentRow ].
	^ rowDictionary