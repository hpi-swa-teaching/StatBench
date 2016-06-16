table management
count: aValue inColumn: aColumn
	| searchValue |
	searchValue := SBNumber newFromNumber: aValue.
	^ (self columnAt: aColumn) count: [ :element |
		element = searchValue ]