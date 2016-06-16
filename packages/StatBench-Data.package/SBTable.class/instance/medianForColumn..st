math functions
medianForColumn: aColumn
	^ (self containsColumnNumbers: aColumn)
		ifTrue: [ self mathematicalMedianForSortedCollection: (self columnWithoutNilValuesAt: aColumn) sorted ]