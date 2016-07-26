column functions
minForColumn: aColumnIndex
	^ (self isColumnNumeric: aColumnIndex)
		ifTrue: [ SBStatFunctions min value: (self columnWithoutNilValuesAt: aColumnIndex) ]
		ifFalse: [ self notANumber ]