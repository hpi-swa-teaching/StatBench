math functions
maxForColumn: aColumn
	^ (self isColumnNumeric: aColumn)
		ifTrue: [ SBStatFunctions max value: (self columnWithoutNilValuesAt: aColumn) ]
		ifFalse: [ #NaN ]