table management
does: aValue existInColumn: aColumn
	| searchValue |
	searchValue := SBNumber newFromNumber: aValue.
	^ self rows detect: [ :currentRow |
		  (currentRow at: aColumn) = searchValue ]
	ifFound: [ :currentRow | true ]
	ifNone: [ false ]