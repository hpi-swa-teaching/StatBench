table management
does: aValue existInColumn: aColumn
	| searchValue |
	searchValue := SBNumber newFromNumber: aValue.
	^ (self columnAt: aColumn) anySatisfy: [ :element |
		  element = searchValue ]