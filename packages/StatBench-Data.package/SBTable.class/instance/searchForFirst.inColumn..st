table management
searchForFirst: aValue inColumn: aColumn
	| searchValue |
	searchValue := SBNumber newFromNumber: aValue.
	^ self rows detect: [ :currentRow |
		(currentRow at: aColumn) = searchValue ] 
		ifFound: [ :currentRow | currentRow ]
		ifNone: [ nil ]