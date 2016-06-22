math functions
papeMedianForColumn: aColumn
	^ (self containsColumnNumbers: aColumn)
		ifTrue: [ SBStatFunctions papeMedian value: (self columnWithoutNilValuesAt: aColumn) ]