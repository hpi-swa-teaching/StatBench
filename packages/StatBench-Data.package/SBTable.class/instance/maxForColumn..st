column functions
maxForColumn: aColumnIndex
	^ (self isColumnNumeric: aColumnIndex)
		ifTrue: [ SBStatFunctions max value: (self columnWithoutNilValuesAt: aColumnIndex) ]
		ifFalse: [ self notANumber ]