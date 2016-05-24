table management
searchForLast: aValue inColumn: aColumn
	| valueCollection |
	valueCollection := self rows select: [ :currentRow |
		(currentRow at: aColumn) = aValue ].
	^ valueCollection isEmpty
		ifTrue: [ nil ]
		ifFalse: [ valueCollection last ]