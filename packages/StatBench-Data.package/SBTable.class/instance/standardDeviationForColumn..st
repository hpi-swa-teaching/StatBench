column functions
standardDeviationForColumn: aColumnIndex
	^ (self isColumnNumeric: aColumnIndex)
		ifTrue: [ SBStatFunctions standardDeviation value: (self columnWithoutNilValuesAt: aColumnIndex) ]
		ifFalse: [ self notANumber ]