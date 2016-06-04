math functions
medianForColumn: aColumn
	| sortedValues columnValues |
	(self containsColumnNumbers: aColumn)
		ifFalse: [ ^ nil ].
	sortedValues := SortedCollection new.
	columnValues := OrderedCollection new.
	self rows collect: [ :currentRow |
		(currentRow at: aColumn) isNil not
			ifTrue: [ currentRow at: aColumn ]] into: columnValues.
	sortedValues addAll: (columnValues select: [ :element | element isNil not ]).
	^ sortedValues size \\ 2 = 0
		ifTrue:  [ (sortedValues at: (sortedValues size / 2)) + (sortedValues at: (sortedValues size / 2 + 1)) / 2 ]
		ifFalse: [ sortedValues median ]