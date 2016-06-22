math functions
meanForColumn: aColumn
	^ (self containsColumnNumbers: aColumn)
		ifTrue: [ SBStatFunctions mean value: (self columnWithoutNilValuesAt: aColumn) ]