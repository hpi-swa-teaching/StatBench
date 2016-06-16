table management
does: aValue existInColumn: aColumn
	| searchValue |
	searchValue := SBNumber newFromNumber: aValue.
	^ (self columnAt: aColumn) detect: [ :element |
		  element = searchValue ]
		ifFound: [ :element | true ]
		ifNone: [ false ]