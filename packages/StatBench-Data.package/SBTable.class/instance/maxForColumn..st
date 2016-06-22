math functions
maxForColumn: aColumn
	^ (self containsColumnNumbers: aColumn)
		ifTrue: [ SBStatFunctions max value: (self columnWithoutNilValuesAt: aColumn) ]