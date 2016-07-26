column functions
medianForColumn: aColumnIndex
	^ (self isColumnNumeric: aColumnIndex)
		ifTrue: [ SBStatFunctions median value: (self columnWithoutNilValuesAt: aColumnIndex) ]
		ifFalse: [ self notANumber ]