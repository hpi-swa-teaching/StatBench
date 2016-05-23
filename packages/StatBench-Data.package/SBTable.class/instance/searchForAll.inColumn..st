table management
searchForAll: aValue inColumn: aColumn
	| rowDictionary |
	rowDictionary := Dictionary new.
	self rows select: [ :currentRow |
		(currentRow at: aColumn) = aValue ]
	thenDo: [ :currentRow |
		rowDictionary at: (self rows indexOf: currentRow) put: currentRow ].
	^ rowDictionary