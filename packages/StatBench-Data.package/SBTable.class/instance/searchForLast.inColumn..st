table management
searchForLast: aValue inColumn: aColumn
	| valueCollection searchValue |
	searchValue := SBNumber newFromNumber: aValue.
	valueCollection := self rowsSelect: [ :currentRow |
		(currentRow at: aColumn) = searchValue ].
	^ valueCollection isEmpty
		ifTrue: [ nil ]
		ifFalse: [ valueCollection last ]