math functions
medianForColumn: aColumn
	^ (self isColumnNumeric: aColumn)
		ifTrue: [ SBStatFunctions median value: (self columnWithoutNilValuesAt: aColumn) ]