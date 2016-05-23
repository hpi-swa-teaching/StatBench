table management
searchForLast: aValue inColumn: aColumn
	| rowDictionary lastIndex |
	lastIndex := nil.
	rowDictionary := Dictionary new.
	self rows select: [ :currentRow |
		(currentRow at: aColumn) = aValue ]
	thenDo: [ :currentRow |
		lastIndex := self rows indexOf: currentRow ].
	^ lastIndex