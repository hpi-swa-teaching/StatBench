math functions
varianceForColumn: aColumn
	^ (self containsColumnNumbers: aColumn)
		ifTrue: [ SBStatFunctions variance value: (self columnWithoutNilValuesAt: aColumn) ]