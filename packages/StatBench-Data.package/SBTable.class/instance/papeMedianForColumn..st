math functions
papeMedianForColumn: aColumn
	"Assures that the resulting value is element of the Collection"
	| sortedValues |
	(self containsColumnNumbers: aColumn)
		ifFalse: [ ^ nil ].
	sortedValues := SortedCollection new.
	sortedValues addAll: (self rows
		select: [ :currentRow |
			(currentRow at: aColumn) isNil not ]
		thenCollect: [ :currentRow |
			currentRow at: aColumn]).
	^ sortedValues median