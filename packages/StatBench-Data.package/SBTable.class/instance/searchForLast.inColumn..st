column functions
searchForLast: aValue inColumn: aColumnIndex
	| valueCollection |
	valueCollection := self rowsSelect: [ :currentRow |
		(currentRow at: aColumnIndex) = aValue ].
	^ valueCollection isEmpty
		ifTrue: [ nil ]
		ifFalse: [ valueCollection last ]