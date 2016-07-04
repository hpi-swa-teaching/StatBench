math functions
meanForColumn: aColumn
	^ (self isColumnNumeric: aColumn)
		ifTrue: [ SBStatFunctions mean value: (self columnWithoutNilValuesAt: aColumn) ]