table management
count: aValue inColumn: aColumn
	| searchValue |
	searchValue := SBNumber newFromNumber: aValue.
	^ self rows count: [ :currentRow |
		(currentRow at: aColumn) = searchValue ]