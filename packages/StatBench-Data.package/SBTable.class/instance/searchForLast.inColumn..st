table management
searchForLast: aValue inColumn: aColumn
	| valueCollection |
	valueCollection := self rows select: [ :currentRow |
		(currentRow at: aColumn) = aValue ].
	^ valueCollection size strictlyPositive
		ifTrue: [ valueCollection last ]
		ifFalse: [ nil ]