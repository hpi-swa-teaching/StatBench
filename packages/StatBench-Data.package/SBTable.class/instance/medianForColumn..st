math functions
medianForColumn: aColumn
	^ (self containsColumnNumbers: aColumn)
		ifTrue: [ SBStatFunctions median value: (self columnWithoutNilValuesAt: aColumn) ]