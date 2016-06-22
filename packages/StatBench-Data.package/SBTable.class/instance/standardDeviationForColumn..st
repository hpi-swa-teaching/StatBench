math functions
standardDeviationForColumn: aColumn
	^ (self containsColumnNumbers: aColumn)
		ifTrue: [ SBStatFunctions standardDeviation value: (self columnWithoutNilValuesAt: aColumn) ]