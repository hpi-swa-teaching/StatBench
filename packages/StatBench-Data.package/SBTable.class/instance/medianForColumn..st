math functions
medianForColumn: aColumn
	| sortedValues |
	(self containsColumnNumbers: aColumn)
		ifFalse: [ ^ nil ].
	sortedValues := SortedCollection new.
	sortedValues addAll: (self rows
		select: [ :currentRow |
			(currentRow at: aColumn) isNil not ]
		thenCollect: [ :currentRow |
			currentRow at: aColumn]).
	^ sortedValues size \\ 2 = 0
		ifTrue:  [ (sortedValues at: (sortedValues size / 2)) + (sortedValues at: (sortedValues size / 2 + 1)) / 2 ]
		ifFalse: [ sortedValues median ]