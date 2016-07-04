math functions
papeMedianForColumn: aColumn
	^ (self isColumnNumeric: aColumn)
		ifTrue: [ SBStatFunctions papeMedian value: (self columnWithoutNilValuesAt: aColumn) ]