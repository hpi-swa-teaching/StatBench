math functions
inSetMedianForColumn: aColumn
	^ (self isColumnNumeric: aColumn)
		ifTrue: [ SBStatFunctions inSetMedian value: (self columnWithoutNilValuesAt: aColumn) ]
		ifFalse: [ #NaN ]