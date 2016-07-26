column functions
meanForColumn: aColumnIndex
	^ (self isColumnNumeric: aColumnIndex)
		ifTrue: [ SBStatFunctions mean value: (self columnWithoutNilValuesAt: aColumnIndex) ]
		ifFalse: [ self notANumber ]