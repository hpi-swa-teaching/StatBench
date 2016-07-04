math functions
standardDeviationForColumn: aColumn
	^ (self isColumnNumeric: aColumn)
		ifTrue: [ SBStatFunctions standardDeviation value: (self columnWithoutNilValuesAt: aColumn) ]