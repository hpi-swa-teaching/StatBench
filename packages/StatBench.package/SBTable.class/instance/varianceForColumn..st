math functions
varianceForColumn: aColumn
	^ (self isColumnNumeric: aColumn)
		ifTrue: [ SBStatFunctions variance value: (self columnWithoutNilValuesAt: aColumn) ]